<?php
$installer = $this;
/* @var $installer Mage_Core_Model_Resource_Setup */
$installer->startSetup();
$installer->getConnection()->addColumn($this->getTable('sales/order'), 'amzpay_order_update_status',
   'int( 11 ) NULL '
);
?>