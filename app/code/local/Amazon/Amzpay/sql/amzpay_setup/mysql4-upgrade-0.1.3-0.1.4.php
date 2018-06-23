<?php
$installer = $this;
/* @var $installer Mage_Core_Model_Resource_Setup */
$installer->startSetup();
$installer->run("    
    ALTER TABLE  {$this->getTable('amzpay/orderhistory')} CHANGE  `order_id`  `order_id` VARCHAR( 255 ) NOT NULL ;
");
$installer->endSetup();
