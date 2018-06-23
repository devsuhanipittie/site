<?php
class Amazon_Amzpay_Model_System_Config_Source_Mode
{
    public function toOptionArray()
    {
    	return array(
    		array('value' => 0, 'label' => 'Sandbox'),
    		array('value' => 1, 'label' => 'Live')
    	);
    }
}