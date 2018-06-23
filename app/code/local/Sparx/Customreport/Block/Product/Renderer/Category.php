<?php

class Sparx_Customreport_Block_Product_Renderer_Category extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Abstract {

    public function render(Varien_Object $row) {
        $value =  $row->getData($this->getColumn()->getIndex());
        if(!$value) return '';

        $product = Mage::getModel('catalog/product')->loadByAttribute('sku', $value );
//        $product = Mage::getModel('catalog/product')->load( $value );

        $categories = '';

        $cats = $product->getCategoryIds();

        foreach ($cats as $category_id) {
            $_cat = Mage::getModel('catalog/category')->setStoreId(Mage::app()->getStore()->getId())->load($category_id);
            $categories[] = $_cat->getName();
        }

        return implode(', ', $categories);

    }

}