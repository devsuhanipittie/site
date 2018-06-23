<?php
    class Sparx_Buynow_IndexController extends Mage_Core_Controller_Front_Action{

        public function IndexAction() {


            $id = $this->getRequest()->getParams('id');

            if(!$id) $this->_redirect('checkout/onepage');

            $qty = '1'; // Replace qty with your qty

            $params = array( 'qty' => $qty );

            $product = Mage::getModel('catalog/product')
                    ->setStoreId(
                        Mage::app()
                        ->getStore()
                        ->getId()
                    )
                    ->load($id);

            Mage::getSingleton('core/session')->setBuyNowPrice( $product->getPrice() );

            $cart = Mage::helper('checkout/cart')->getCart();
            $cart->addProduct($product, $params);
            $cart->save();  

            Mage::getModel('checkout/session')->setCartWasUpdated(true);

            $this->_redirect('checkout/onepage');

        }

    }