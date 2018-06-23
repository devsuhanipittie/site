<?php
/**
 * @copyright  Copyright (c) 2010 AITOC, Inc. 
 */


class Aitoc_Aitpagecache_Session_Files extends Aitoc_Aitpagecache_Session_Abstract
{
    private $_sessionPath = 'var/session';
    protected $_file = null;
    
    public function init($config)
    {
        if($config!=false)
        { 
            $path = (string)$config->global->session_save_path;
            if($path)
            {
                $this->_sessionPath = $path;
            } 
        }    
    }   
    
    public function getSession($config = false)
    {
        if(is_null($this->_file)) {
            if($config == false) {
                $config = $this->getConfig();
            }
            $this->init($config);
            if (!isset($_COOKIE['frontend']))
            {
                $booster = Aitoc_Aitpagecache_Mainpage::getInstance(null);
                $_COOKIE['frontend'] = $booster->getSessionKey();
            }
            if(file_exists($this->_sessionPath . "/" . "sess_" . $_COOKIE['frontend']))
            {
                $this->_file = file_get_contents($this->_sessionPath . "/" . "sess_" . $_COOKIE['frontend']);
            } else {
                $this->_file = false;
            }
        }
        return $this->_file;
    }
}
 