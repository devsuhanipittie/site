<?php 
class Amazon_Amzpay_Block_Adminhtml_System_Config_Form_Field_Disable extends Mage_Adminhtml_Block_System_Config_Form_Field{
    protected function _getElementHtml(Varien_Data_Form_Element_Abstract $element) {
        $code = Mage::getSingleton('adminhtml/config_data')->getStore();
        $store_id = Mage::getModel('core/store')->load($code)->getId();

        if('payment_amzpay_ipn_haldler' == $element->getId()){
            $element->setValue(Mage::getUrl('amzpay/redirect/ipn', array('_store'=>$store_id)));
            $element->setComment($element->getValue() ."<br>The URL needs to be updated in seller central and SSL needs to be enabled on server");
        }
        else if('payment_amzpay_api_sign_verify_endpoint' == $element->getId())
        {
            $element->setValue(Mage::getUrl('amzpay/redirect/apiverify', array('_store'=>$store_id)));
            $element->setComment($element->getValue());
        }
        else if('payment_amzpay_api_sign_endpoint' == $element->getId()){
            $element->setValue(Mage::getUrl('amzpay/redirect/apisign', array('_store'=>$store_id)));
            $element->setComment($element->getValue());
        }
        else if('payment_amzpay_whitelist_url' == $element->getId()){
            $element->setValue(Mage::getUrl('amzpay/redirect/success', array('_store'=>$store_id)));
            $element->setComment($element->getValue());
        }
        $element->setType('hidden');
        $element->setDisabled('disabled');        
        return parent::_getElementHtml($element);
    }
}