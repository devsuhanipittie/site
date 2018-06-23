<?php
$installer = $this;
/* @var $installer Mage_Core_Model_Resource_Setup */
$installer->startSetup();
$installer->run("    
    CREATE TABLE IF NOT EXISTS {$this->getTable('amzpay/orderhistory')} (
        `order_id` bigint(20) unsigned NOT NULL,
        PRIMARY KEY (`order_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
");

$installer->endSetup();