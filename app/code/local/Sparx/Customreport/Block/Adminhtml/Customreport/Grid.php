<?php

class Sparx_Customreport_Block_Adminhtml_Customreport_Grid extends Mage_Adminhtml_Block_Report_Product_Sold_Grid {

//    public function __construct()
//    {
//        parent::__construct();
//        $this->setId('gridProductsSold');
//    }
//

    protected function _prepareCollection() {
        parent::_prepareCollection();
        $this->getCollection()->initReport('reports/product_sold_collection');
        return $this;
    }
    
    /**
     * Prepare Grid columns
     *
     * @return Mage_Adminhtml_Block_Report_Product_Sold_Grid
     */
    protected function _prepareColumns() {

        $this->addColumn('sku', array(
            'header'    =>Mage::helper('reports')->__('Product Sku'),
            'index'     =>'sku'
        ));

        $this->addColumn('image', array(
            'header'    =>Mage::helper('reports')->__('Product Image'),
            'index'     =>'image',
            'renderer'  => 'Sparx_Customreport_Block_Product_Renderer_Image'
        ));

         $this->addColumn('categories', array(
             'header'    => Mage::helper('reports')->__('Product Categories'),
             'index'     => 'sku',
             'renderer'  => 'Sparx_Customreport_Block_Product_Renderer_Category'
         ));

        $this->addColumn('name', array(
            'header'    =>Mage::helper('reports')->__('Product Name'),
            'index'     =>'order_items_name'
        ));

        $this->addColumn('ordered_qty', array(
            'header'    =>Mage::helper('reports')->__('Quantity Ordered'),
            'width'     =>'120px',
            'align'     =>'right',
            'index'     =>'ordered_qty',
            'total'     =>'sum',
            'type'      =>'number'
        ));
        
         $this->addColumn('price', array(
            'header'    =>Mage::helper('reports')->__('Product MRP.'),
            'width'     =>'120px',
            'align'     =>'right',
            'index'     =>'price',
            'type'          => 'currency',
            'currency_code' => $currencyCode,
            'rate'          => $rate,
        ));
        
        
        
        

        return parent::_prepareColumns();
    }


}