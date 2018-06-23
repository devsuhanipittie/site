<?php
$installer = $this;
/* @var $installer Mage_Core_Model_Resource_Setup */
$installer->startSetup();
$installer->getConnection()->addColumn($this->getTable('sales/creditmemo'), 'amzpay_refund_id',
   'VARCHAR( 255 ) NULL '
);
$installer->getConnection()->addColumn($this->getTable('sales/creditmemo'), 'amzpay_refund_status',
   'VARCHAR( 255 ) NULL '
);

$installer->endSetup();