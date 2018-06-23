<?php
class Sparx_Customreport_Block_Adminhtml_Customreport extends Mage_Adminhtml_Block_Widget_Grid_Container {

    public function __construct() {
        $this->_controller = 'adminhtml_customreport';
        $this->_blockGroup = 'customreport';
        $this->_headerText = Mage::helper('customreport')->__('Merchandising');
        parent::__construct();
        $this->_removeButton('add');
    }
}