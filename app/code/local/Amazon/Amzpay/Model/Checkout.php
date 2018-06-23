<?php
class Amazon_Amzpay_Model_Checkout extends Mage_Payment_Model_Method_Abstract {
    protected $_code  = 'amzpay';
    protected $_canUseCheckout = true;
    protected $_canUseForMultishipping  = false;
    protected $_amzpayHelper;
    protected $pwaINBackendSDK;

    public function backRedirection(){
        $session = $this->getCheckout();
        $forntName = Mage::app()->getFrontController()->getAction()->getFullActionName();
        if($forntName == 'checkout_cart_index'){
            if(isset($session['amzpay_real_order_id']) && $session['amzpay_real_order_id'] != null){
                $this->getHelper()->amzpayLog($session->getData());
                $order = Mage::getModel('sales/order');
                $order->loadByIncrementId($session->getAmzpayRealOrderId());
                try {
                    if(Mage_Sales_Model_Order::STATE_CANCELED != $order->getState() && $order->canCancel()){

                        $order->addStatusToHistory(Mage_Sales_Model_Order::STATE_CANCELED, 'Order canceled by back button', false);
                        $order->cancel()->save();

                    }
                    if ($quoteId = $session->getAmzpayQuoteId()) {
                        $quote = Mage::getModel('sales/quote')->load($quoteId);
                        if ($quote->getId()) {
                            $quote->setIsActive(true)->save();
                            $session->setQuoteId($quoteId);
                        }
                    }
                    $this->resetData();
                    return Mage::getUrl('checkout/cart');
                } catch (Exception $e) {
                    $this->getHelper()->amzpayLog($e->getMessage());
                }
            }    
        }
        
    }
    public function getHelper(){
      if($this->_amzpayHelper){
        return $this->_amzpayHelper;
      }
      return $this->_amzpayHelper = Mage::helper('amzpay');
    }
    public function getCheckout() {
        return Mage::getSingleton('checkout/session');
    }

    public function _getOrderByAmazonId($amazonId) {

        $paymentCollection = Mage::getModel('sales/order_payment')->getCollection()
            ->addAttributeToFilter('last_trans_id', $amazonId)
            ->load();

        if ($paymentCollection->count()) {
            $payment = $paymentCollection->getFirstItem();
            if ($payment->getParentId()) {
                $order = Mage::getModel('sales/order')->load($payment->getParentId());
                return $order;
            }
        }
        return null;
    }
    public function convertMessageData($messageData){
        $this->getHelper()->amzpayLog('convertMessageData Data');
        $this->getHelper()->amzpayLog($messageData);
        $notificationData = stripslashes($messageData['NotificationData']);
        $xml = simplexml_load_string($notificationData);
        $json = json_encode($xml);
        $response = json_decode($json,TRUE);
        $this->getHelper()->amzpayLog("Decoded xml data");
        $this->getHelper()->amzpayLog($response);
        return $response;
    }
    public function ipnRefundHandler($messageData) {
        
        $response = $this->convertMessageData($messageData);
        $responseData = $response['RefundTransactionDetails'];
        if(!empty($responseData)){
            try {
                $creditmemo = Mage::getModel('sales/order_creditmemo')->getCollection()->addFieldToFilter('increment_id',$responseData['RefundReferenceId'])->getFirstItem();
                $status = $responseData['Status']['State'];
                $amazonRefundId = $responseData['RefundTransactionId'];

                if($status != $creditmemo->getAmzpayRefundStatus()){
                    $creditmemo->addComment("Amazon Pay Refund $amazonRefundId Id Status:$status");
                    $creditmemo->setAmzpayRefundStatus($status);
                    $creditmemo->save();
                    $this->getHelper()->amzpayLog("creditmemo updated Amazon Pay Refund $amazonRefundId Id Status:$status");
                }
                $this->sendSuccessResponse();
            } catch (Exception $e) {
                $this->getHelper()->amzpayLog($e->getMessage());
                $this->sendErrorResponse();        
            }
        }
    }
    public function ipnOrderHandler($messageData) {
        $response = $this->convertMessageData($messageData);
        $responseData = $response['ChargeTransactionDetails'];
        if(isset($responseData['OrderID'])){
            try {
                $order = Mage::getModel('sales/order');
                $order->loadByIncrementId($responseData['SellerReferenceId']);
                
                if($responseData['Status']['State'] == Amazon_Amzpay_Helper_Data::AMZPAY_DECLINED){
                    $this->cancelOrder($order,$responseData);
                    $this->getHelper()->amzpayLog("ipnOrderHandler cancelOrder done");
                }
                else if($responseData['Status']['State'] == Amazon_Amzpay_Helper_Data::AMZPAY_COMPLETED){
                    $this->orderProcess($order,$responseData['OrderID']);
                    $this->getHelper()->amzpayLog("ipnOrderHandler orderProcess done");
                }
                $this->getHelper()->amzpayLog("ipn process complete");
                $this->sendSuccessResponse();
            } catch (Exception $e) {
                $this->getHelper()->amzpayLog($e->getMessage());
                $this->sendErrorResponse();           
            }
        }
    }
    public function setCurrentStore($storeId){
        Mage::app()->setCurrentStore($storeId);
    }
    public function sendErrorResponse(){
        $this->getHelper()->amzpayLog('send response HTTP/1.1 500 Internal Server Error');
        header('HTTP/1.1 500 Internal Server Error');
        die;
    }
    public function sendSuccessResponse(){
        $this->getHelper()->amzpayLog('send response HTTP/1.1 200');
        header('HTTP/1.1 200');
        die;
    }
    public function cancelOrder($order,$responseData = array()) {
        
        try {
            if (!$order->getId()) {
                $this->getHelper()->amzpayLog('No order for processing found');
                return true;
                //$this->sendErrorResponse();
            }
            $session = Mage::getSingleton('checkout/session');            

            $adapter = Mage::getSingleton('core/resource')->getConnection('core_read');
            $adapter->beginTransaction();
            $this->lockId($order->getIncrementId());
            try {

                if(Mage_Sales_Model_Order::STATE_CANCELED != $order->getState() && $order->canCancel()){
                    if(!empty($responseData)){

                        $order->getPayment()->setStatus(self::STATUS_DECLINED)
                                ->setAmountPaid($order->getGrandTotal())
                                ->setLastTransId($responseData['OrderID'])
                                ->setTransactionId($responseData['OrderID'])
                                ->setIsTransactionClosed(true)
                                ->setShouldCloseParentTransaction(true);

                        $order->addStatusToHistory(Mage_Sales_Model_Order::STATE_CANCELED, 'Amazon Pay Order id '.$responseData['OrderID'].' Cancel status updated by Amazon Pay due to Error Code '.$responseData['Status']['ReasonCode']. ' ' . $responseData['Status']['ReasonDescription'], false);
                    }
                    else{
                        $requestData = Mage::app()->getRequest()->getParams();

                        $order->getPayment()->setStatus(self::STATUS_DECLINED)
                                ->setAmountPaid($order->getGrandTotal())
                                ->setLastTransId($requestData['amazonOrderId'])
                                ->setTransactionId($requestData['amazonOrderId'])
                                ->setIsTransactionClosed(true)
                                ->setShouldCloseParentTransaction(true);

                        if(!empty($requestData) && isset($requestData['reasonCode']) && isset($requestData['description']))
                        $order->addStatusToHistory(Mage_Sales_Model_Order::STATE_CANCELED, 'Amazon Pay Order id '.$requestData['amazonOrderId'].' Cancel status updated by Amazon Pay due to Error Code '.$requestData['reasonCode']. ' ' . $requestData['description'], false);
                    }
                    $order->setAmzpayOrderUpdateStatus(1);
                    $order->cancel()->save();
                }
            } catch (Exception $e) {
                
            }
            $order->setAmzpayOrderUpdateStatus(1)->save();

            $adapter->commit();

            if ($quoteId = $session->getAmzpayQuoteId()) {
                $quote = Mage::getModel('sales/quote')->load($quoteId);
                if ($quote->getId()) {
                    $quote->setIsActive(true)->save();
                    $session->setQuoteId($quoteId);
                    $session->addError(Mage::helper('amzpay')->__('The payment has been canceled.'));
                }
            }
            $this->getHelper()->amzpayLog('Order canceled by Amazon Pay');
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
    }
    public function orderProcess($order,$amazonOrderId = null) {

        $adapter = Mage::getSingleton('core/resource')->getConnection('core_read');
        $adapter->beginTransaction();
        $this->lockId($order->getIncrementId());
        if($this->getHelper()->getAmzpayConfig('amzpay_order_status') != $order->getStatus()){
            $this->getHelper()->amzpayLog('Order state already updated');
        }
        else{
            $post = Mage::app()->getRequest()->getParams();
            $this->getHelper()->amzpayLog($post);
            if($amazonOrderId == null)
            $amazonOrderId = isset($post['amazonOrderId']) ? $post['amazonOrderId'] : "";
            /* Create Invoice */
            try {
                $payment = $order->getPayment();
                $payment->setTransactionId($amazonOrderId)
                    ->setLastTransId($amazonOrderId)->save();
                if($order->canInvoice() && $this->getHelper()->getAmzpayConfig('amzpay_invoice')){

                    $data = array( 'Payment status' => 'Success', 'Transaction mode' => $this->_code, 'Amount' => $order->getBaseGrandTotal(), 'Transaction id' => $amazonOrderId, 'Bank reference id' => 'NA', 'Card type' => 'NA', 'Name on card' => 'NA', 'Card no' => 'NA');
                    $payment = $order->getPayment();
                    $payment->setCurrencyCode($order->getBaseCurrencyCode())
                        ->setPreparedMessage('Amazon Pay payment success')
                        ->setParentTransactionId()
                        ->setShouldCloseParentTransaction(true)
                        ->setIsTransactionClosed(1)
                        ->registerCaptureNotification($order->getBaseGrandTotal(),true);
                    $order->save();
                    $order = Mage::getModel('sales/order')->load($order->getId());
                    $payment = $order->getPayment();
                    $payment->getTransaction($amazonOrderId)
                        ->setAdditionalInformation(
                        Mage_Sales_Model_Order_Payment_Transaction::RAW_DETAILS,
                        $data
                    )->save();
                }
                    
                $status = $this->getHelper()->getAmzpayConfig('amzpay_order_status_after');
                $this->getHelper()->amzpayLog('Update order state done');
                $order->setStatus($status, true);
                $order->setAmzpayOrderUpdateStatus(1);
                $order->addStatusHistoryComment('Payment Successful. Amazon Pay order Id:'.$amazonOrderId);
                $order->sendNewOrderEmail();
                $order->save();
                $this->getHelper()->amzpayLog('Invoice created order id'.$order->getId());
                
            }
            catch (Mage_Core_Exception $e) {
                $this->getHelper()->amzpayLog($e->getMessage());
            }
        }
        $order->setAmzpayOrderUpdateStatus(1)->save();
        $adapter->commit();
    }
    public function getQuote() {
        return Mage::getSingleton('checkout/session')->getQuote();
    }
    public function getOrderPlaceRedirectUrl()
    {   
        return Mage::getUrl('amzpay/redirect/process');
    }
    public function dumpIpn($headers,$body){
        $post = json_decode($body, true);
        if(!empty($post))
            $messageData = json_decode($post['Message'], true);
        $xml = $this->convertMessageData($messageData);

        if(isset($messageData['NotificationType']) && $messageData['NotificationType'] == 'PaymentRefund'){

            $creditmemo = Mage::getModel('sales/order_creditmemo')->getCollection()->addFieldToFilter('increment_id',$xml['RefundTransactionDetails']['RefundReferenceId'])->getFirstItem();
            $storeId = $creditmemo->getStoreId();
            $this->getHelper()->amzpayLog('IPN refund store id '.$storeId);
        }
        else if(isset($messageData['NotificationType']) && $messageData['NotificationType'] == 'OrderReferenceNotification'){
            $order = Mage::getModel()->loadByIncrementId($xml['ChargeTransactionDetails']['OrderID']);
            $storeId = $order->getStoreId();
            $this->getHelper()->amzpayLog('IPN order store id '.$storeId);
        }
        $this->setCurrentStore($storeId);
        //$logName = $xml['ChargeTransactionDetails']['OrderID'].$xml['ChargeTransactionDetails']['SellerReferenceId'].".log";
        /*Mage::log(print_r($headers, 1), null,$logName);
        Mage::log(print_r($body, 1), null,$logName);*/
    }
    public function verifyIpn($headers,$post){
        //$this->dumpIpn($headers,$post);
        try {
            $verifyIpn = Mage::getBaseDir('lib') . DS . 'Amzpay' .  DS . 'IopnClient.php';
            require_once($verifyIpn);
            $response = new IopnClient($headers,$post);
            $this->getHelper()->amzpayLog('IPN verified ');
        } catch (Exception $e) {
            $this->sendErrorResponse();
        }
    }
    public function verify($post){
        try {
            if(!empty($post)){
                $status = isset($post['status']) ? $post['status'] : "";
                if($status == "SUCCESS")
                {
                    $this->setAmzpayConfig();
                    return $this->pwaINBackendSDK->verifySignature($post);
                }
            }
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
        return false;
    }
    public function getFormApi($request){
        $this->setAmzpayConfig();
        return $response = $this->pwaINBackendSDK->generateSignatureAndEncrypt($request);
    }
    public function getFormWeb($order){
        return $this->getFormUrl($order->getBaseGrandTotal(),$order->getStoreCurrencyCode(),$order->getIncrementId());
    }
    public function getFormUrl($grand_total,$store_currency_code,$reserved_order_id){
        try {
            $this->setAmzpayConfig();//'https://amazonpay.amazon.in';
            // Payment parameters
            $paymentParams = array();
            $paymentParams['orderTotalAmount'] = $grand_total;
            $paymentParams['orderTotalCurrencyCode'] = $store_currency_code;
            $paymentParams['sellerOrderId'] = $reserved_order_id;

            if($this->getHelper()->getAmzpayConfig('amzpay_cancel_time') && $this->getHelper()->getAmzpayConfig('amzpay_enable_timeout'))
            {
                $paymentParams['transactionTimeout'] = $this->getHelper()->getAmzpayConfig('amzpay_cancel_time');   
            }
            
            if($this->getHelper()->getAmzpayConfig('amzpay_mode') == 0)
                $paymentParams['isSandbox'] = "true";
            else
                $paymentParams['isSandbox'] = "false";
            
            
            return $this->pwaINBackendSDK->getProcessPaymentUrl($paymentParams,Mage::getUrl('amzpay/redirect/success'));
            
            
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
        return false;
    }
    public function sendCreditmemoRefund($creditmemo = null){
        try {

            $this->getHelper()->amzpayLog('sendCreditmemoRefund for creditmemo id '.$creditmemo->getId());
            $this->setAmzpayConfig();
            $refund_reference_id = $creditmemo->getIncrementId();
            $order = $creditmemo->getOrder();
            $payment = $order->getPayment();
            $amazon_capture_id = $payment->getLastTransId();
            $requestParameters = array();
            $requestParameters['amazon_transaction_id'] = $amazon_capture_id;
            $requestParameters['refund_reference_id'] = $creditmemo->getIncrementId();
            $requestParameters['amazon_transaction_type'] = "OrderReferenceId";
            $requestParameters['refund_amount'] = $creditmemo->getBaseGrandTotal();
            $requestParameters['currency_code'] = $creditmemo->getBaseCurrencyCode();
            
            $this->refundUpdate($this->pwaINBackendSDK->refund($requestParameters),$creditmemo);
            $this->getHelper()->amzpayLog('sendCreditmemoRefund updated');
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
    }
    //cron
    public function sendOrderUpdateCron($order = null){
        try {
            $this->getHelper()->amzpayLog('sendOrderUpdateCron for order id '.$order->getId());
            $this->setAmzpayConfig();

            $requestParameters = array();

            
            $requestParameters['query_id'] = $order->getIncrementId();
            $requestParameters['payment_domain'] = 'IN_INR';
            $requestParameters['query_id_type'] = 'SellerOrderId';
            
            $create_time = explode(" ",$order->getCreatedAt());
            $end_time = strtotime($create_time[0]) + (86400*3);
            $end_time = date("Y-m-d",$end_time);
            $requestParameters['created_time_range_start'] = $create_time[0]."T".$create_time[1]."+0530";
            $requestParameters['created_time_range_end'] = $end_time."T".$create_time[1]."+0530";
            $response = $this->pwaINBackendSDK->listOrderReference($requestParameters);
            
            $this->orderCronUpdate($response,$order);
            $this->getHelper()->amzpayLog('sendOrderUpdateCron updated');
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
    }
    //cron update
    public function orderCronUpdate($response,$order){
        $this->getHelper()->amzpayLog('orderCronUpdate response for order',$order->getId());
        $this->getHelper()->amzpayLog($response);
        if($response && $order){

            try {
                
                if(empty($response['ListOrderReferenceResult']['OrderReferenceList'])){
                    $order->addStatusToHistory($order->getStatus(),'Empty order response. Please check seller central.', false);
                    $order->setAmzpayOrderUpdateStatus(2)->save();
                    return true;
                }
                $responseData = $response['ListOrderReferenceResult']['OrderReferenceList']['OrderReference'];
                $status = $responseData['OrderReferenceStatus']['State'];
                $amazonOrderId = $responseData['AmazonOrderReferenceId'];

                $sendCancelresponse=array();

                $sendCancelresponse['OrderID'] = $responseData['SellerOrderAttributes']['SellerOrderId'];
                $sendCancelresponse['Status']['ReasonCode'] = $responseData['OrderReferenceStatus']['ReasonCode'];
                $sendCancelresponse['Status']['ReasonDescription'] = $responseData['OrderReferenceStatus']['ReasonDescription'];


                if(isset($response['ResponseStatus']) && $response['ResponseStatus'] == 200){                    
                    if($responseData['OrderReferenceStatus']['ReasonCode'] == "UpfrontChargeSuccess" OR $responseData['OrderReferenceStatus']['ReasonDescription'] == "Txn Success" ){
                        $this->orderProcess($order,$amazonOrderId);
                    }
                    else{
                        $this->cancelOrder($order,$sendCancelresponse);
                    }
                }
                $this->getHelper()->amzpayLog('orderCronUpdate response Successfully');
          
            } catch (Exception $e) {
                $this->getHelper()->amzpayLog($e->getMessage());
            }
        }        
    }
    //end
    public function refundUpdate($response,$creditmemo){
        $this->getHelper()->amzpayLog('refundUpdate response for creditmemo',$creditmemo->getId());
        $this->getHelper()->amzpayLog($response);
        if($response && $creditmemo){
            try {
                $responseData = $response['RefundPaymentResult']['RefundDetails']['RefundDetail'];
                $status = $responseData['RefundStatus']['State'];
                $amazonRefundId = $responseData['AmazonRefundId'];
                
                if(isset($response['ResponseStatus']) && $response['ResponseStatus'] == 200){                    
                    if($creditmemo->setAmzpayRefundStatus() != $status)
                        $creditmemo->addComment("Amazon Pay Refund $amazonRefundId Id Status:$status");

                    $creditmemo->setAmzpayRefundId($amazonRefundId);
                }
                else if(isset($response['Error'])){
                    $creditmemo->addComment("Amazon Pay Refund ".Amazon_Amzpay_Helper_Data::AMZPAY_DECLINED." reason ".$response['Error']['Message']);
                    
                    $creditmemo->setAmzpayRefundId(Amazon_Amzpay_Helper_Data::AMZPAY_DECLINED);
                }

                $creditmemo->setAmzpayRefundStatus($status);
                
                $creditmemo->save();      
                $this->getHelper()->amzpayLog('refundUpdate response Successfully');
          
            } catch (Exception $e) {
                $this->getHelper()->amzpayLog($e->getMessage());
            }
        }        
    }
    public function refundDetailsUpdate($response,$creditmemo){
        
        if(isset($response['ResponseStatus']) && $response['ResponseStatus'] == 200){
            $responseData = $response['GetRefundDetailsResult']['RefundDetails'];
            $status = $responseData['RefundStatus']['State'];
            if($creditmemo->getAmzpayRefundStatus() != $status){
                $amazonRefundId = $responseData['AmazonRefundId'];
                $creditmemo->addComment("Amazon Pay Refund $amazonRefundId Id Status:$status");
                $creditmemo->setAmzpayRefundStatus($status);
            }
        }
        else if(isset($response['Error']))
            $creditmemo->addComment("Amazon Pay Refund ".Amazon_Amzpay_Helper_Data::AMZPAY_DECLINED." reason ".$response['Error']['Message']);
        
        $creditmemo->save();
    }
    public function setAmzpayConfig()
    {   $this->getHelper()->amzpayLog('setAmzpayConfig');
        if ($this->pwaINBackendSDK instanceof PWAINBackendSDK)
            return $this->pwaINBackendSDK;

        $configArray = array();
        $configArray['merchant_id'] = $this->getHelper()->getAmzpayConfig('amzpay_merchantid');
        $configArray['secret_key'] = $this->getHelper()->getAmzpayConfig('amzpay_secretkey');
        $configArray['access_key'] = $this->getHelper()->getAmzpayConfig('amzpay_accesskey');     
        if($this->getHelper()->getAmzpayConfig('amzpay_mode') == 0)   
            $configArray['sandbox'] = 'true';
        else
            $configArray['sandbox'] = 'false';

        $configArray['base_url'] = 'https://amazonpay.amazon.in';
        try {            
            $createSignature = Mage::getBaseDir('lib') . DS . 'Amzpay' .  DS . 'PWAINBackendSDK.php';
            require_once($createSignature);
            return $this->pwaINBackendSDK = new PWAINBackendSDK($configArray);
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
    }
    public function getRefundDetails($creditmemo = null){
        try {
            $this->setAmzpayConfig();
            $requestParameters = array();
            $requestParameters['merchant_id'] = $this->getHelper()->getAmzpayConfig('amzpay_merchantid');
            $requestParameters['amazon_refund_id'] = $creditmemo->getAmzpayRefundId();
            $this->refundDetailsUpdate($this->pwaINBackendSDK->getRefundDetails($requestParameters),$creditmemo);
        } catch (Exception $e) {
            //print_r($e->getMessage());
        }
    }

    public function lockId($id){
        $adapter = Mage::getModel('core/resource')->getConnection('core_read');
        $table = Mage::getModel('core/resource')->getTableName('amzpay/orderhistory');
        $select = $adapter->select()
                    ->from($table)
                    ->where('order_id = ?', $id)
                    ->forUpdate(true);
        $adapter->query($select);
        return $this;
    }
    public function insertEntry($order){
        $table = Mage::getModel('core/resource')->getTableName('amzpay/orderhistory');
        $adapter = Mage::getModel('core/resource')->getConnection('core_read');
        $adapter->query(' insert into '.$table.' values("'.$order->getIncrementId().'" ) ');

        return $this;
    }
    public function isEnable(){
        if(!$this->getHelper()->getAmzpayConfig('amzpay_active')){
            $this->getHelper()->amzpayLog('Amazon Pay Disabled');
            return false;
        }
        return true;
    }
    public function isIpnEnable(){
        if(!$this->getHelper()->getAmzpayConfig('ipn_haldler')){
            return true;
        }
        return false;
    }
    public function isAvailable($quote = null) {

        try {
            if(!$this->getHelper()->getAmzpayConfig('amzpay_active')){
                return false;
            }
            if($quote->getBaseCurrencyCode() == 'INR'){
                $response = $this->getHelper()->checkAllowIps($quote);
                if($response) return true;
            }
        } catch (Exception $e) {
            $this->getHelper()->amzpayLog($e->getMessage());
        }
        return false;
    }
    public function resetData(){

        $session = $this->getCheckout();
        $session->unsetData('amzpay_quote_id');
        $session->unsetData('amzpay_url');
        $session->unsetData('amzpay_success_quote_id');
        $session->unsetData('amzpay_real_order_id');
        $session->unsetData('redirect_url');

    }
}
