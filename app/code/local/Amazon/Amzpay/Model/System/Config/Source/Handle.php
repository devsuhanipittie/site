<?php
class Amazon_Amzpay_Model_System_Config_Source_Handle
{
    public function toOptionArray()
    {
    	return array(
    		array('value' => 0, 'label' => 'IPN'),
    		array('value' => 1, 'label' => 'Cron')
    	);
    }
}