<?php 

class Sparx_Customreport_Block_Product_Renderer_Image extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Abstract {

	public function render(Varien_Object $row) { 
		$value =  $row->getData($this->getColumn()->getIndex());
		if(!$value) return '';

		$url = Mage::getBaseUrl(Mage_Core_Model_Store::URL_TYPE_MEDIA). 'catalog/product'. $value;

//		return  '<a href="'.$url.'" target="_blank"><img style="height:50px; width:50px;" src="'.$url. '" /></a>';
		return  '<img style="height:50px; width:50px;" src="'.$url. '" />';
	}

}