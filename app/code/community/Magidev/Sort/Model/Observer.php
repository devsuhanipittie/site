<?php
/**
 * MagiDev
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade MagiDev Package to newer
 * versions in the future. If you wish to customize Package for your
 * needs please refer to http://www.magidev.com for more information.
 *
 * @category    Magidev
 * @package     Magidev_Sort
 * @copyright   Copyright (c) 2014 MagiDev. (http://www.magidev.com)
 */

/**
 * Observer: add tabs to category
 *
 * @category   Magidev
 * @package    Magidev_Sort
 * @author     Magidev Team <support@magidev.com>
 */
class Magidev_Sort_Model_Observer extends Mage_Core_Model_Abstract
{
    /**
     * Add tab to category edit
     * event: adminhtml_catalog_category_tabs
     * @param $observer
     */
    public function addTabs( $observer ){
		if( Mage::app()->getRequest()->getParam('store') ){
			Mage::getSingleton('core/session')->setMagiBackendStoreId(Mage::app()->getRequest()->getParam('store'));
		}
		$observer->getTabs()->addTab('magidev_sort', array(
			'label'     => Mage::helper('catalog')->__('Merchandising'),
            'url'   => Mage::helper('adminhtml')->getUrl('adminhtml/sortproduct/index', array('_current' => true)),
            'class' => 'ajax',
		));
    }
}
