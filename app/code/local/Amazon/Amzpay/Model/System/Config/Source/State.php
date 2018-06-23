<?php
class Amazon_Amzpay_Model_System_Config_Source_State extends Mage_Adminhtml_Model_System_Config_Source_Order_Status
{
	public function toOptionArray()
    {
	    $statuses = $collection = Mage::getModel( 'sales/order_status' )->getCollection()->joinStates()->addFieldToFilter('state',array('new','processing','pending_payment'));


		$status = array();
		$status = array(
		    ''=>'Please Select..'
		);

		foreach($statuses as $key => $value) {
			
		    $status[] = array (
		        'value' => $value->getStatus(), 'label' => $value->getLabel()
		    );
		}
		return $status;
	}
}
