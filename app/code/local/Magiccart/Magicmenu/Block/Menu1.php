<?php
/**
 * Magiccart 
 * @category  Magiccart 
 * @copyright   Copyright (c) 2014 Magiccart (http://www.magiccart.net/) 
 * @license   http://www.magiccart.net/license-agreement.html
 * @Author: Magiccart<team.magiccart@gmail.com>
 * @@Create Date: 2014-05-28 10:10:00
 * @@Modify Date: 2015-02-09 16:39:52
 * @@Function:
 */

class Magiccart_Magicmenu_Block_Menu extends Mage_Catalog_Block_Navigation
{

    protected $cfgExt  = array();
    protected function _construct()
    {
        parent::_construct();
        $this->cfgExt = (object)Mage::helper('magicmenu')->getConfig();
    }

    public function getCatRootId()
    {
        return $rootcatId= Mage::app()->getStore()->getRootCategoryId();
    }

    public function getIsHomePage()
    {
        return $this->getUrl('') == $this->getUrl('*/*/*', array('_current'=>true, '_use_rewrite'=>true));
    }

    public function drawHomeMenu()
    {
        if(!Mage::registry('drawMainMenu')){
            $drawHomeMenu = '';
            $active = ($this->getIsHomePage()) ? ' active' : '';
            $drawHomeMenu .= '<li class="level0 home' . $active . '"><a class="level-top" href="'.Mage::helper('core/url')->getHomeUrl().'"><span class="icon-home fa fa-home"></span><span class="icon-text">' .$this->__('Home'). '</span><span class="boder-menu"></span></a></li>';
            Mage::register('drawHomeMenu', $drawHomeMenu, true);
        }
    }

    public function drawMainMenu()
    {
        if(!Mage::registry('drawMainMenu')){
            $mobileMenu = '';
            $drawMainMenu = '';
            $catListTop = $this->getCatTop();
            $contentCatTop  = $this->getContentCatTop();
            $extData    = array();
            foreach ($contentCatTop as $ext) {
                $extData[$ext->getCatId()] = $ext->getData();
            }
            $i = 1; $last = count($catListTop);
            foreach ($catListTop as $catTop) :
                $active = $this->isCategoryActive($catTop->getEntityId()) ? ' active' : '';
                $data =''; $options='';
                if(isset($extData[$catTop->getEntityId()])) $data   = $extData[$catTop->getEntityId()];
                $blocks = array('top'=>'', 'left'=>'', 'right'=>'', 'bottom'=>'');
                if($data){
                    foreach ($blocks as $key => $value) {
                        $proportions = $key .'_proportions';
                        $weight = (isset($data[$proportions])) ? $data[$proportions]:'';
                        $html = $this->getStaticBlock($data[$key]);
                        if($html) $blocks[$key] = "<div class='mage-column mega-block-$key'>".$html.'</div>';
                    }
                    $remove = array('top'=>'', 'left'=>'', 'right'=>'', 'bottom'=>'', 'short_desc'=>'', 'cat_id'=>'');
                    foreach ($remove as $key => $value) {
                        unset($data[$key]);
                    }
                    $opt     = json_encode($data);
                    $options = $opt ? "data-options='$opt'" : '';
                }

                $url =  '<a class="level-top" href="' . Mage::getBaseUrl() . '"><span>'
                                .$this->__($catTop->getName()).' '.$this->getCatLabel($catTop). //.'<img src="'.$this->getImage($catTop).'" alt="'.$this->__($catTop->getName()).'" />
                        '</span><span class="boder-menu"></span></a>';



                $class  = ($i == 1) ? 'first' : ($i == $last ? 'last' : '');
                $class .= $active;

                // drawMainMenu
                $childTop   = $this->getTopChild($catTop->getEntityId());
                $nChild     = count($childTop);
                if(!$nChild) $class .= ' noChild';
                $drawMainMenu .= "<li class='level0 cat $class' $options>" .$url;
                $mobileMenu .= '<li class="level-top">'.$url;

                    // $childTop = $this->getTopChild($catTop->getEntityId());
                    if($nChild || $blocks['top'] || $blocks['left'] || $blocks['right'] || $blocks['bottom']) :
                        $drawMainMenu .= '<div class="level-top-mega">';  /* Wrap Mega */
                            $drawMainMenu .='<div class="content-mega">';  /*  Content Mega */
                                $drawMainMenu .= $blocks['top'];
                                $drawMainMenu .= '<div class="content-mega-horizontal">';
                                    $drawMainMenu .= $blocks['left'];
                                    if($nChild) :
                                        $drawMainMenu .= '<ul class="mage-column cat-mega">';
                                        $mobileMenu .= '<ul>';
                                        $first ="level-3 first";

                                        foreach ($childTop as $child) {

                                            if( $child->getid() == 35 ) continue;

                                            $first .= $this->isCategoryActive($child->getEntityId()) ? ' active' : '';

                                            if( $first == "level-3 first" ) {

                                                if( $child->getEntityId() == 67 ) {
                                                    $url =  $this->getImage($child) .'<a href="'.Mage::getBaseUrl().'category">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';
                                                } elseif( $child->getEntityId() == 68 ){
                                                    $url =  $this->getImage($child) .'<a href="'.Mage::getBaseUrl().'collection">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';
                                                } else{
                                                    $url =  $this->getImage($child) .'<a href="#">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';
                                                    
                                                }

                                            } else {

                                                if( $child->getEntityId() == 67 ) {
                                                    $url =  $this->getImage($child) .'<a href="'.Mage::getBaseUrl().'category">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';
                                                } elseif( $child->getEntityId() == 68 ){
                                                    $url =  $this->getImage($child) .'<a href="'.Mage::getBaseUrl().'collection">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';
                                                } else{
                                                    $url =  $this->getImage($child) .'<a href="'. Mage::getUrl($child->getUrlPath()).'">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';    
                                                }
                                            }
                                            


                                            $drawMainMenu .= '<li class="children"><ul>';
                                                $drawMainMenu .= '<li class="'.$first.'">'.$url.'</li>';
                                            $mobileMenu .= '<li>'.$url;
                                                $catList = $this->getCatByPath($child->getEntityId(), $child->getPath());
                                                if(count($catList)){
                                                    $mobileMenu .='<ul>';
                                                    $first = ''; // $i = 0; $last  = ''; 
                                                    foreach ($catList as $cat) {
                                                      //if($i >= $this->getGeneralCfg('limit_items')) break;
                                                        $active = $this->isCategoryActive($cat->getEntityId()) ? ' active' : '';

                                                        $color = Mage::getResourceModel('catalog/category')->getAttributeRawValue( $cat->getEntityId(), "color_code", Mage::app()->getStore()->getId());

                                                        if( $color ) {
                                                            $url = '<a  style="color: '.$color.'" href="'. Mage::getBaseUrl(). $cat->getUrlPath() .'">'.$this->__($cat->getName()).' '.$this->getCatLabel($cat) .'</a>';
                                                        } else {
                                                            $url = '<a href="'. Mage::getBaseUrl(). $cat->getUrlPath() .'">'.$this->__($cat->getName()).' '.$this->getCatLabel($cat) .'</a>';
                                                        }


                                                        $drawMainMenu .= '<li class="nav'.$active.'">'.$url.'</li>';
                                                        $mobileMenu .= '<li class="nav '.$active.'">'.$url.'</li>';
                                                        // $i++;
                                                    }
                                                    $mobileMenu .= '</ul>';                             
                                                }

                                            $drawMainMenu .= '</ul></li>';
                                            $mobileMenu .= '</li>';
                                            $first ="level-3 first";

                                        }

                                        /************************************************** women category ************************************/
                                        foreach ($childTop as $child) {

                                            if( $child->getid() != 35 ) continue;
											
											$first .= $this->isCategoryActive($child->getEntityId()) ? ' active' : '';

                                            if( $first == "level-3 first" ) {
                                                $url =  $this->getImage($child) .'<a href="#">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';
                                            } else {
                                                $url =  $this->getImage($child) .'<a href="'. Mage::getUrl($child->getUrlPath()).'">'.$this->__($child->getName()). ' '.$this->getCatLabel($child) . '</a>';    
                                            }
											
                                            //  shop by collection 
											$drawMainMenu .= '<li class="children">';
											$drawMainMenu .= '<ul>';
											$drawMainMenu .= '<li class="'.$first.'">'.$url.'</li>';

                                            $mobileMenu .= '<li class="children">';
                                            $mobileMenu .= '<li class="'.$first.'">'.$url.'';
                                            $mobileMenu .= '<ul>';

                                            // $mobileMenu  .= '<li class="nav mainchildren mainshopcollection "><a class="maintitle" href="#">'. $this->__('Shop By Collection') .'</a>';
                                            // $mobileMenu .= $this->getLayout()->createBlock('core/template')->setTemplate('attribute-splash/menu.phtml')->toHtml();
                                            // $mobileMenu  .= '</li>';

                                            // ./ Shop by collection 

                                            $drawMainMenu  .= '<li class="nav mainchildren mainshopbycategory"><a class="maintitle" href="#">'. $this->__('Shop By Category') .'</a> <ul> ';
                                            
                                            $mobileMenu  .= '<li class="nav mainchildren mainshopbycategory"><a class="maintitle" href="#">'. $this->__('Shop By Category') .'</a> <ul>';
                                            

                                            $drawMainMenu .= '<li class="children"><ul>';

                                            //$mobileMenu .= '<li>'.$url;
                                                $catList = $this->getCatByPath($child->getEntityId(), $child->getPath());
                                                if(count($catList)){
                                                    //$mobileMenu .='<ul>';
                                                    $first = ''; // $i = 0; $last  = ''; 
                                                    foreach ($catList as $cat) {


                                                      //if($i >= $this->getGeneralCfg('limit_items')) break;
                                                        $active = $this->isCategoryActive($cat->getEntityId()) ? ' active' : '';

                                                        $color = Mage::getResourceModel('catalog/category')->getAttributeRawValue( $cat->getEntityId(), "color_code", Mage::app()->getStore()->getId());

                                                        if( $color ) {
                                                            $url = '<a  style="color: '.$color.'" href="'. Mage::getBaseUrl(). $cat->getUrlPath() .'">'.$this->__($cat->getName()).' '.$this->getCatLabel($cat) .'</a>';
                                                        } else {
                                                            $url = '<a href="'. Mage::getBaseUrl(). $cat->getUrlPath() .'">'.$this->__($cat->getName()).' '.$this->getCatLabel($cat) .'</a>';

                                                        }

                                                        $drawMainMenu .= '<li class="nav'.$active.'">'.$url.'</li>';
                                                        $mobileMenu .= '<li class="nav '.$active.'">'.$url.'</li>';
                                                        // $i++;
                                                    }
                                                    //$mobileMenu .= '</ul>';                             
                                                }

                                            $drawMainMenu .= '</ul></li>';

                                            //$mobileMenu .= '</li>';

                                            $drawMainMenu .= '</ul> </li>';
                                            $mobileMenu .= ' </ul></li>';

                                            $mobileMenu  .= '<li class="nav mainchildren mainshopcollection "><a class="maintitle" href="#">'. $this->__('Shop By Collection') .'</a>';
                                            $mobileMenu .= $this->getLayout()->createBlock('core/template')->setTemplate('attribute-splash/menu.phtml')->toHtml();
                                            $mobileMenu  .= '</li>';
                                            
                                            $mobileMenu .= '</li>';

                                            $mobileMenu .= ' </ul> </li>';

                                            $drawMainMenu  .= '<li class="nav mainchildren mainshopcollection "><a class="maintitle" href="#">'. $this->__('Shop By Collection') .'</a>';
                                            $drawMainMenu .= $this->getLayout()->createBlock('core/template')->setTemplate('attribute-splash/menu.phtml')->toHtml();
                                            $drawMainMenu  .= '</li>';

											$drawMainMenu .= '</ul></li>';
											
                                            $first ="level-3 first";

                                        }
                                        /************************************************** women category ************************************/


										$drawMainMenu .= '<li>'  .$blocks['bottom']. '</li>';
                                        $drawMainMenu .= '</ul>'; // end cat-mega
                                        $mobileMenu .= '</ul>';
                                    endif;
                                    $drawMainMenu .= $blocks['right'];
                                $drawMainMenu .= '</div>';
                                //$drawMainMenu .= $blocks['bottom'];
                            $drawMainMenu .= '</div>';  /* End Content mega */
                        $drawMainMenu .= '</div>';  /* Warp Mega */
                    endif;
                $mobileMenu .='</li>';
                $drawMainMenu .= '</li>';
                $i++; // not duplicate $i
            endforeach;

            Mage::register('mobileMenu', $mobileMenu, true);
            Mage::register('drawMainMenu', $drawMainMenu, true);

        }
    }

    public function drawExtraMenu()
    {
        if(!Mage::registry('drawExtraMenu')){
            $extMenu    = $this->getExtraMenu();
            $count = count($extMenu);
            $drawExtraMenu = '';
            if($count){
                $i = 1; $class = 'first';
                $currentUrl = $this->helper('core/url')->getCurrentUrl();
                foreach ($extMenu as $ext) { 
                    $link = $ext->getLink();
                    $url = (filter_var($link, FILTER_VALIDATE_URL)) ? $link : $this->getUrl($link);
                    $active = ( $link && $url == $currentUrl) ? ' active' : '';
                    $html = $this->getStaticBlock($ext->getExtContent());
                    if($html) $active .=' hasChild';
                    $drawExtraMenu .= "<li class='level0 ext $active $class'>";
                        if($link){
                            $drawExtraMenu .= '<a class="level-top" ';

                            if( strtolower( $ext->getName() ) == 'blog' ) $drawExtraMenu .= ' target="_blank" ';

                            $drawExtraMenu .= 'href="' .$url. '"><span>' .$this->__($ext->getName()) . $this->getCatLabel($ext). '</span></a>';                                
                        } 
                        else{
                            $drawExtraMenu .= '<span class="level-top"><span>' .$this->__($ext->getName()) . $this->getCatLabel($ext). '</span></span>';  
                        } 

                        if($html) $drawExtraMenu .= '<div class="level-top-mega">'.$html.'</div>';
                    $drawExtraMenu .= '</li>';
                    $i++;
                    $class = ($i == $count) ? 'last' : '';  
                }
            }

            Mage::register('drawExtraMenu', $drawExtraMenu, true); 
        }
    }

    public function getCatTop()
    {
        $collection = Mage::getModel('catalog/category')->getCollection()
                        ->addAttributeToSelect(array('entity_id','name','magic_label','short_desc','url_path'))
                        ->addAttributeToFilter('parent_id', $this->getCatRootId())
                        ->addAttributeToFilter('include_in_menu', 1)
                        ->addIsActiveFilter()
                        ->addLevelFilter(2)
                        ->addAttributeToSort('position', 'asc'); //->addOrderField('name');
        return $collection;
    }

    public function getTopChild($parentId)
    {
        $collection = Mage::getModel('catalog/category')->getCollection()
                        ->addAttributeToSelect(array('entity_id','name','magic_label','short_desc','url_path','magic_image'))
                        ->addAttributeToFilter('parent_id', $parentId)
                        ->addAttributeToFilter('include_in_menu', 1)
                        ->addAttributeToFilter('level',3)
                        ->addIsActiveFilter()
                        ->addAttributeToSort('position', 'asc'); //->addOrderField('name');
        return $collection;
    }

    public function getExtraMenu()
    {
        $store = Mage::app()->getStore()->getStoreId();
        $collection = Mage::getModel('magicmenu/menu')->getCollection()
                        ->addFieldToSelect(array('link','name','magic_label','short_desc','ext_content','order'))
                        // ->addFieldToFilter('stores',array(array('like' => '0%'),array('like' => "%$store%")))
                        ->addFieldToFilter('extra', 1)
                        ->addFieldToFilter('status', 1);
        $collection->getSelect()->where('find_in_set(0, stores) OR find_in_set(?, stores)', $store)->order('order');
        return $collection;        
    }

    public function getCatLabel($cat)
    {
        $html = '';
        $label = explode(',', $cat->getMagicLabel());
        foreach ($label as $lab) {
          if($lab) $html .= '<span class="cat_label '.$lab.'">'.$this->__(trim($lab)) .'</span>';
        }
        $short_desc = trim($cat->getShortDesc());
        if($short_desc) $html .= '<span class="short_desc">'.$this->__($short_desc) .'</span>';

        return $html;
    }

    public function getContentCatTop()
    {
        $store = Mage::app()->getStore()->getStoreId();
        $collection = Mage::getModel('magicmenu/menu')->getCollection()
                        ->addFieldToSelect(array(
                                'cat_id','cat_columns','cat_proportions','short_desc','top',
                                'right','right_proportions','bottom','left','left_proportions'
                            ))
                        ->addFieldToFilter('stores',array( array('finset' => 0), array('finset' => $store)))
                        ->addFieldToFilter('status', 1);
        return $collection;
    }

    public function getStaticBlock($id)
    {
        $block = Mage::getModel('cms/block')->load($id);
        return $this->getLayout()->createBlock('cms/block')
                                 ->setBlockId($block->getIdentifier())
                                 ->toHtml();
    }

    public function getCatByPath($parentId, $path)
    {
        $collection = Mage::getModel('catalog/category')->getCollection()
                        ->addAttributeToSelect('name')
                        ->addAttributeToSelect('url_path')
                        ->addAttributeToFilter('entity_id', array('neq' => $parentId))
						->addAttributeToFilter('include_in_menu', 1)
                        ->addFieldToFilter('path', array('like' => "$path/%"))
                        ->addAttributeToSort('level', 'asc')
						->addAttributeToSort('position', 'asc')
						//->addAttributeToSort('path', 'asc')
                        ->addFieldToFilter('is_active', array('eq'=>'1'))
                        //->getSelect()->limit(5)
                        //->load(5) // display SQL
                        ->load();
                        //->toArray();
        return $collection;
    }

    public function isCategoryActive($catId)
    {
        return $this->getCurrentCategory()
            ? in_array($catId, $this->getCurrentCategory()->getPathIds()) : false;
    }

    public function getImage($object)
    {
        $image = Mage::helper('magicmenu/image');
        $width = 210; //$this->config['widthThumb'];
        $height= 104; //$this->config['heightThumb'];
        $file  = $object->getMagicImage();
        if($file){
            $img = $image->resizeImg('/'.$file, $width, $height);
            if($img) return '<img src="'.$img.'">';
        }
    }

    public function getThumbnail($object)
    {
        $image = Mage::helper('magicmenu/image');
        $width = 50; //$this->config['widthThumb'];
        $height= 50; //$this->config['heightThumb'];
        $file  = $object->getMagicThumbnail();
        if($file) $img = $image->resizeImg('/'.$file, $width, $height);
        if($img) return '<img src="'.$img.'">';
    }

}

