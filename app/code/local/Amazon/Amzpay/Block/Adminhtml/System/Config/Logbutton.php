<?php
class Amazon_Amzpay_Block_Adminhtml_System_Config_Logbutton extends Mage_Adminhtml_Block_System_Config_Form_Field  implements Varien_Data_Form_Element_Renderer_Interface{
    protected function _getElementHtml(Varien_Data_Form_Element_Abstract $element)
    {
        $buttonBlock = Mage::app()->getLayout()->createBlock('adminhtml/widget_button');
        $params = array(
            'website' => $buttonBlock->getRequest()->getParam('website')
        );
        $data = array(
            'label'     => Mage::helper('adminhtml')->__('Download Log'),
            'onclick'   => 'setLocation(\''.Mage::helper('adminhtml')->getUrl("amzpay/adminhtml_index/index/", $params) . '\' )',
            'class'     => '',
        );
        $html = $buttonBlock->setData($data)->toHtml();
        return $html."
        <script>
                setTimeout(function(){
                    document.getElementById('row_payment_amzpay_api_sign_verify_endpoint').getElementsByClassName('note')[0].style.background = 'none';
                    for(i=0;i<document.getElementById('row_payment_amzpay_api_sign_verify_endpoint').getElementsByTagName('td').length;i++){
                        if(i>1)
                        document.getElementById('row_payment_amzpay_api_sign_verify_endpoint').getElementsByTagName('td')[i].style.display = 'none';
                    }
                    document.getElementById('row_payment_amzpay_api_sign_verify_endpoint').getElementsByClassName('scope-label')[0].style.display = 'none';



                    document.getElementById('row_payment_amzpay_export').getElementsByClassName('note')[0].style.background = 'none';
                    for(i=0;i<document.getElementById('row_payment_amzpay_export').getElementsByTagName('td').length;i++){
                        if(i>1)
                        document.getElementById('row_payment_amzpay_export').getElementsByTagName('td')[i].style.display = 'none';
                    }
                    document.getElementById('row_payment_amzpay_export').getElementsByClassName('scope-label')[0].style.display = 'none';


                    document.getElementById('row_payment_amzpay_ipn_haldler').getElementsByClassName('note')[0].style.background = 'none';
                    for(i=0;i<document.getElementById('row_payment_amzpay_ipn_haldler').getElementsByTagName('td').length;i++){
                        if(i>1)
                        document.getElementById('row_payment_amzpay_ipn_haldler').getElementsByTagName('td')[i].style.display = 'none';
                    }
                    document.getElementById('row_payment_amzpay_ipn_haldler').getElementsByClassName('scope-label')[0].style.display = 'none';


                    document.getElementById('row_payment_amzpay_api_sign_endpoint').getElementsByClassName('note')[0].style.background = 'none';
                    for(i=0;i<document.getElementById('row_payment_amzpay_api_sign_endpoint').getElementsByTagName('td').length;i++){
                        if(i>1)
                        document.getElementById('row_payment_amzpay_api_sign_endpoint').getElementsByTagName('td')[i].style.display = 'none';
                    }
                    document.getElementById('row_payment_amzpay_api_sign_endpoint').getElementsByClassName('scope-label')[0].style.display = 'none';

                    document.getElementById('row_payment_amzpay_whitelist_url').getElementsByClassName('note')[0].style.background = 'none';
                    for(i=0;i<document.getElementById('row_payment_amzpay_whitelist_url').getElementsByTagName('td').length;i++){
                        if(i>1)
                        document.getElementById('row_payment_amzpay_whitelist_url').getElementsByTagName('td')[i].style.display = 'none';
                    }
                    document.getElementById('row_payment_amzpay_whitelist_url').getElementsByClassName('scope-label')[0].style.display = 'none';

                }, 50);
            </script>";
    }
}