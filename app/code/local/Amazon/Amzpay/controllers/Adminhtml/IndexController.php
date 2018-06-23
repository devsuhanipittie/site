<?php
class Amazon_Amzpay_Adminhtml_IndexController extends Mage_Adminhtml_Controller_Action
{
    protected function _isAllowed()
    {
        return true;
    }
    public function indexAction()
    {   $logFile = Mage::helper('amzpay')->logFileName();
        try {
            $file = Mage::getBaseDir('log')."/$logFile";
            Mage::log('File Downloaded', null,$logFile);
            if (file_exists($file)) {
                header('Content-Description: File Transfer');
                header('Content-Type: application/octet-stream');
                header('Content-Disposition: attachment; filename="'.basename($file).'"');
                header('Expires: 0');
                header('Cache-Control: must-revalidate');
                header('Pragma: public');
                header('Content-Length: ' . filesize($file));
                readfile($file);
                exit;
            }   
            else{
                $this->_getSession()->addError($this->__('You don\'t have file '.$logFile.' on '.Mage::getBaseDir('log')));    
                $url = Mage::helper('adminhtml')->getUrl('adminhtml/system_config/edit/section/payment');
                $this->_redirectUrl($url);
                return;
            }
        } catch (Exception $e) {
            $this->_getSession()->addError($this->__('You don\'t have file '.$logFile.' on '.Mage::getBaseDir('log')));
            $url = Mage::helper('adminhtml')->getUrl('adminhtml/system_config/edit/section/payment');
            $this->_redirectUrl($url);
            return;
        }
        
    }
    public function ipnAction()
    {   
        try {
            $request = $this->getRequest()->getParams();
            $order = Mage::getModel('sales/order')->load($request['order_id']);
            $incrementId = $order->getIncrementId();
            $lastTransId = $order->getPayment()->getLastTransId();
            $logFile = $lastTransId.$incrementId.".log";

            $file = Mage::getBaseDir('log')."/$logFile";

            if (file_exists($file)) {

                header('Content-Description: File Transfer');
                header('Content-Type: application/octet-stream');
                header('Content-Disposition: attachment; filename="'.basename($file).'"');
                header('Expires: 0');
                header('Cache-Control: must-revalidate');
                header('Pragma: public');
                header('Content-Length: ' . filesize($file));
                readfile($file);
                exit;
            }
            else{
                $this->_getSession()->addError($this->__('You don\'t have file '.$logFile.' on '.Mage::getBaseDir('log')));
            }
            
        } catch (Exception $e) {
            $this->_getSession()->addError($e->getMessage());
        }
        $url = Mage::helper('adminhtml')->getUrl('adminhtml/sales_order/view',array('order_id' => $request['order_id']));
        $this->_redirectUrl($url);
        return;
    }
    public function cronrefreshAction()
    {   
        try {
            $request = $this->getRequest()->getParams();
            $order = Mage::getModel('sales/order')->load($request['order_id']);
            Mage::getModel('amzpay/checkout')->sendOrderUpdateCron($order);

             $this->_getSession()->addSuccess($this->__('Order status successfully updated.'));

        } catch (Exception $e) {
            $this->_getSession()->addError($e->getMessage());
        }
        $url = Mage::helper('adminhtml')->getUrl('adminhtml/sales_order/view',array('order_id' => $request['order_id']));
        $this->_redirectUrl($url);
        return;
    }
}