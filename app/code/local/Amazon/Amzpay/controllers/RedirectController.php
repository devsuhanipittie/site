<?php
class Amazon_Amzpay_RedirectController extends Mage_Core_Controller_Front_Action {
    protected $order;
    protected $_amzpayCheckoutModel;
    public function getCheckoutModel(){
      if($this->_amzpayCheckoutModel){
        return $this->_amzpayCheckoutModel;
      }
      return $this->_amzpayCheckoutModel = Mage::getModel('amzpay/checkout');
    }
    public function getCheckout() {
        return Mage::getSingleton('checkout/session');
    }

    public function processAction()
    {   
        
        if(!$this->getCheckoutModel()->isEnable()) return ;
        $session = $this->getCheckout();
        try {            
            //get order singleton
            $order = Mage::getModel('sales/order');
            $order->loadByIncrementId($session->getLastRealOrderId());

            if (!$order->getId()) {
                Mage::throwException('No order for processing found');
            }  
            $url = $this->getCheckoutModel()->getFormWeb($order);          
            //save order and quote ids
            if ($session->getQuoteId() && $session->getLastSuccessQuoteId()) {

                $session->setAmzpayQuoteId($session->getQuoteId());
                $session->setAmzpaySuccessQuoteId($session->getLastSuccessQuoteId());
                $session->setAmzpayRealOrderId($session->getLastRealOrderId());
                $session->getQuote()->setIsActive(false)->save();
                $session->clear();
            }
            if($url){
                $redirectUrl = $url;
                //set order status
                $order->addStatusToHistory($order->getStatus(), 'Customer was redirected to Amazon Pay.', false)->save();
                $this->getCheckoutModel()->insertEntry($order);
                $this->getCheckoutModel()->getHelper()->amzpayLog($session->getData());
                $this->getCheckoutModel()->getHelper()->amzpayLog('Customer was redirected to Amazon Pay for order id '.$order->getIncrementId());
            }
            else{
                $this->getCheckoutModel()->getHelper()->amzpayLog('Error in redirection');
                $session->addError(Mage::helper('amzpay')->__('Error in redirection.Please refresh or try again'));
                $redirectUrl = Mage::getUrl('*/*/cancel', array('_secure' => true));
            }
        } catch (Mage_Core_Exception $e) {
            $this->getCheckoutModel()->getHelper()->amzpayLog($e->getMessage());
            $redirectUrl = Mage::getUrl('*/*/cancel', array('_secure' => true));
        } catch(Exception $e) {
            $this->getCheckoutModel()->getHelper()->amzpayLog($e->getMessage());
            $redirectUrl = Mage::getUrl('*/*/cancel', array('_secure' => true));
        }
        $this->_redirectUrl($redirectUrl);
        return;
    }
    public function cancelAction()
    {   
        if(!$this->getCheckoutModel()->isEnable()) return ;
        $session = $this->getCheckout();

        $this->getCheckoutModel()->getHelper()->amzpayLog('cancelAction callfor session ');
        $this->getCheckoutModel()->getHelper()->amzpayLog($session->getData());
        $order = Mage::getModel('sales/order');
        
        $order->loadByIncrementId($session->getAmzpayRealOrderId());
        $this->getCheckoutModel()->cancelOrder($order);
        
        
        $this->getCheckoutModel()->resetData();
        $redirectUrl = Mage::getUrl('checkout/cart', array('_secure' => true));
        $this->_redirectUrl($redirectUrl);
        return;
    }

    public function apiSignAction() {
        if(!$this->getCheckoutModel()->isEnable()) return ;
        $request = $this->getRequest()->getParams();
        $result = array('error'=>0,'success'=>0,'data'=>null);
        if(empty($request)){
            echo "false";
        }
        else{
            if(!isset($request['orderTotalAmount']) && !isset($request['orderTotalCurrencyCode']) && !isset($request['sellerOrderId']) && !isset($request['transactionTimeout'])){
                echo "false";
            }
            else{
                try {                    
                   $url = $this->getCheckoutModel()->getFormApi($request);
                   echo $url;
                } catch (Exception $e) {
                   echo "false";
                }
            }
        }
        die;
    }
    public function apiVerifyAction() {        
        if(!$this->getCheckoutModel()->isEnable()) return ;
        $request = $this->getRequest()->getParams();
        $result = array('error'=>0,'success'=>0,'data'=>null);
        if(empty($request))
            echo false;
        else{
            $response = $this->getCheckoutModel()->verify($request);
            if($response === true)echo "true";
            else if($response === false)echo "false";
        }
        die;
    }

    public function completeAction()
    {   
        try {
            $session = $this->getCheckout();
            $session->setQuoteId($session->getAmzpayQuoteId());
            $session->setLastSuccessQuoteId($session->getAmzpaySuccessQuoteId());
            $redirectUrl = $this->getCheckoutModel()->getHelper()->getAmzpayConfig('amzpay_redirect_userurl');
            if($redirectUrl === null || $redirectUrl === '')
                $redirectUrl = Mage::getUrl('checkout/onepage/success', array('_secure' => true));
            $session->unsetData('amzpay_real_order_id');
        } catch (Mage_Core_Exception $e) {
            $redirectUrl = Mage::getUrl('checkout/cart', array('_secure' => true));            
        }
        $this->_redirectUrl($redirectUrl);
        return;
    }

    public function postAction($success = false){
        if(!$this->getCheckoutModel()->isEnable()) return ;
        $post = $this->getRequest()->getParams();
        $this->getCheckoutModel()->getHelper()->amzpayLog('Response Form Payment Method Amazon Pay');
        $this->getCheckoutModel()->getHelper()->amzpayLog($post);
        $status = isset($post['status']) ? $post['status'] : "";
        $amazonOrderId = isset($post['amazonOrderId']) ? $post['amazonOrderId'] : "";
        $sellerOrderId = isset($post['sellerOrderId']) ? $post['sellerOrderId'] : "";
        if($status == "SUCCESS")
            $success = $this->getCheckoutModel()->verify($post);
        if ($success === true) {            
            $order = Mage::getModel('sales/order');
            $order->loadByIncrementId($sellerOrderId);
            $this->getCheckoutModel()->orderProcess($order);
            $this->_redirect('*/*/complete');    
            return;
        }
        else{
            $this->_redirect('*/*/cancel',$post);
            return;
        }
    }

    public function successAction($success = false){
        $this->loadLayout();
        $this->renderLayout();
    }
    public function ipnAction()
    {   
        if(!$this->getCheckoutModel()->isEnable()) return ;        
        $headers =  getallheaders();
        $body = file_get_contents('php://input');        
        $this->getCheckoutModel()->getHelper()->amzpayLog('IPN Data Headers:');
        $this->getCheckoutModel()->getHelper()->amzpayLog($headers);
        $this->getCheckoutModel()->getHelper()->amzpayLog('IPN Data Body:');
        $this->getCheckoutModel()->getHelper()->amzpayLog($body);
        $this->getCheckoutModel()->verifyIpn($headers,$body);
        try {
            $post = json_decode($body, true);
            $this->getCheckoutModel()->getHelper()->amzpayLog($post);
            if(!empty($post)){
                $messageData = json_decode($post['Message'], true);
                $this->getCheckoutModel()->getHelper()->amzpayLog($messageData);
                if(isset($messageData['NotificationType']) && $messageData['NotificationType'] == 'PaymentRefund'){
                    $this->getCheckoutModel()->ipnRefundHandler($messageData);
                }
                else if(isset($messageData['NotificationType']) && $messageData['NotificationType'] == 'OrderReferenceNotification'){
                    $this->getCheckoutModel()->ipnOrderHandler($messageData);
                }
                else{
                    $this->getCheckoutModel()->sendErrorResponse();
                } 
            }
            else {
                $this->getCheckoutModel()->sendErrorResponse();
            }
        } catch (Exception $e) {
            $this->getCheckoutModel()->sendErrorResponse();
        }
        die;
    }
}