<?php
class Amazon_Amzpay_Model_Observer extends Mage_Core_Block_Abstract {
    private $isUsed = false;
    private $amzpayCurrentStore;
    public function output_amzpay_redirect(Varien_Object $observer) {
        return $this;
    }
    public function callAmzpayApi(){
        $stores = Mage::app()->getStores(false, false);
        foreach ($stores as $store) {
            Mage::app()->setCurrentStore($store);
            $collection = $this->loadForSubmitRefund($store);
            if(count($collection) > 0 ){
                foreach ($collection as $credit) {
                    if(isset($credit['creditmemo_entity_id'])){
                        $creditmemo = Mage::getModel('sales/order_creditmemo')->load($credit->getCreditmemoEntityId());
                        Mage::getModel('amzpay/checkout')->sendCreditmemoRefund($creditmemo);    
                    }
                    
                }
            }
        }
        if(Mage::Helper('amzpay')->getAmzpayConfig('amzpay_cron')){
            $now = time();
            $schedule = (int) Mage::Helper('amzpay')->getAmzpayConfig('amzpay_cron_time') * (60);
            $lastReportProcessing = Mage::Helper('amzpay')->getAmzpayConfig('amzpay_cron_processing');
            $lastReportTimeDiff = (int) $now - (int) $lastReportProcessing;
            if($lastReportTimeDiff >= $schedule){
                foreach ($stores as $store) {
                    Mage::app()->setCurrentStore($store);
                    $collection = $this->loadForOrderUpdateCron($store);
                    if(count($collection) > 0 ){
                        foreach ($collection as $orderData) {
                            $order = Mage::getModel('sales/order')->load($orderData->getParentId());
                            Mage::getModel('amzpay/checkout')->sendOrderUpdateCron($order);    
                        }
                    }
                }
                foreach ($stores as $store) {
                    Mage::app()->setCurrentStore($store);
                    $collection = $this->loadForRefundStatus($store);
                    if(count($collection) > 0 ){
                        foreach ($collection as $creditmemo) {                    
                            Mage::getModel('amzpay/checkout')->getRefundDetails($creditmemo);
                        }
                    }
                }
                Mage::Helper('amzpay')->setAmzpayConfig('amzpay_cron_processing',$now);
            }
        }
    }
    public function loadForRefundStatus($store){
        $collection = Mage::getModel('sales/order_creditmemo')->getCollection();
        $collection->addFieldToFilter('amzpay_refund_status',Amazon_Amzpay_Helper_Data::AMZPAY_PENDING);
        $collection->addFieldToFilter('store_id',$store->getId());
        return $collection;
    }

    public function loadForSubmitRefund($store){

        $orderCollection = Mage::getResourceModel('sales/order_collection');
        $orderCollection->addFieldToFilter('main_table.store_id',$store->getId());
        $orderCollection->join('order_payment', 'main_table.entity_id = order_payment.parent_id');
        $orderCollection->addFieldToFilter('order_payment.method', 'amzpay');
        $orderCollection->addAttributeToFilter('order_payment.last_trans_id', array('notnull' => true));
        $orderCollection->getSelect()->reset('columns');  
        $orderCollection->join('creditmemo', 'main_table.entity_id = creditmemo.order_id',array('creditmemo_entity_id' => 'entity_id'));
        $orderCollection->addFieldToFilter('creditmemo.amzpay_refund_id',array('null' => true));
        return $orderCollection;
    }
    //for cron
    public function loadForOrderUpdateCron($store){
        $cron_order_date = date("Y-m-d H:i:s",time()-(3600*1));

        $orderCollection = Mage::getResourceModel('sales/order_collection');
        $orderCollection->addFieldToFilter('main_table.store_id',$store->getId());
        $orderCollection->addFieldToFilter('main_table.created_at',array('lt' => $cron_order_date));
        $orderCollection->addAttributeToFilter('main_table.state', array('nin' => array(
                    Mage_Sales_Model_Order::STATE_COMPLETE,
                    Mage_Sales_Model_Order::STATE_CLOSED,
                    Mage_Sales_Model_Order::STATE_CANCELED
                )));
        $orderCollection->addFieldToFilter('main_table.amzpay_order_update_status',array('null' => true));
        $orderCollection->join('order_payment', 'main_table.entity_id = order_payment.parent_id');
        $orderCollection->addFieldToFilter('order_payment.method', 'amzpay');
        $orderCollection->addAttributeToFilter('order_payment.last_trans_id', array('null' => true));
        return $orderCollection;
    }
    public function addOrderstatusAction($observer)
    {
        $block = $observer->getEvent()->getBlock();
        if ($block instanceof Mage_Adminhtml_Block_Sales_Order_View) {
            $order = Mage::registry('sales_order');
            $payMethod = $order->getPayment()->getMethod();
            if($order->getAmzpayOrderUpdateStatus()!=1 && $payMethod == 'amzpay'){
            /*$block->addButton('ipn_log', 
                array( 'label' => Mage::helper('sales')->__('Update Status'),
                    'onclick' => "location.href = '{$block->getUrl('amzpay/adminhtml_index/ipn/')}'", 'class' => 'go' ));*/
            $block->addButton('ipn_status', 
                array( 'label' => Mage::helper('sales')->__('Update Status '),
                    'onclick' => "location.href = '{$block->getUrl('amzpay/adminhtml_index/cronrefresh/')}'", 'class' => 'go' ));
            }
        }
    }
}