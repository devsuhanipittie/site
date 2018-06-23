<?php
/**
 * @copyright  Copyright (c) 2010 AITOC, Inc. 
 */

abstract class Aitoc_Aitpagecache_Session_Abstract
{
    protected $_config = null;
    protected $_loggedIn = null;

    public function setConfig($config) {
        $this->_config = $config;
    }
    
    public function getConfig() {
        return $this->_config;
    }
    
    public function hasMessages($config = false)
    {
        $session = $this->getSession($config);
        if($session !== false)
        {
            if(preg_match('/Mage_Core_Model_Message_Collection(.){1,20}_messages";a:([1-9]+[0-9]*):\{/',$session)){
                return true;
            }
        }    
        return false;
    }
    
    public function isLoggedIn($config = false) {
        if(is_null($this->_loggedIn)) {
            $session = $this->getSession($config);
            if($session !== false)
            {
                if(preg_match('/customer_id";([^N]{1})(.){1,30}customer_log_id";([^N]{1})/',$session)){
                    $this->_loggedIn = true;
                } else {
                    $this->_loggedIn = false;
                }
            }    
        }
        return $this->_loggedIn;
    }
} 
