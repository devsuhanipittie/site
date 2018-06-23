<?php
/**
 * @copyright  Copyright (c) 2010 AITOC, Inc. 
 */

require_once(dirname(__FILE__).'/Abstract.php');
class Aitoc_Aitpagecache_Session_Universal extends Aitoc_Aitpagecache_Session_Abstract
{
    private $_sessionPath = 'var/session';
    protected $_sessionRaw = null;
    protected $_sessionType = null;
    
    public function __construct($type = null)
    {
        $this->_sessionType = $type;
    }

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
        $booster = Aitoc_Aitpagecache_Mainpage::getInstance(dirname(dirname(dirname(dirname(dirname(__FILE__))))));

        if ($booster->checkAdmin($_SERVER['REQUEST_URI']))
        {
            return false;
        }
        if(is_null($this->_sessionRaw)) {
            if($config == false) {
                $config = $this->getConfig();
            }

            $this->init($config);

            switch($this->_sessionType) {
                case 'db':
                    ini_set('session.save_handler', 'user');
                    $adapter = (string)$config->global->resources->default_setup->connection->type;
                    if(!$adapter)
                    {
                        $adapter = 'Pdo_mysql';
                    }
                    else
                    {
                        $adapter = ucfirst($adapter);
                    }
                    require_once(dirname(__FILE__).'/Mysql/'.$adapter.'.php');
                    $className = 'Aitoc_Aitpagecache_Session_Mysql_'.$adapter;
                    $sessionResource = new $className($config);
                    $sessionResource->setSaveHandler();
                    break;
                case 'memcache':
                    ini_set('session.save_handler', 'memcache');
                    session_save_path($this->_sessionPath);
                    break;
                case 'memcached':
                    ini_set('session.save_handler', 'memcached');
                    session_save_path($this->_sessionPath);
                    break;
                case 'eaccelerator':
                    ini_set('session.save_handler', 'eaccelerator');
                    break;
                default:
                    session_module_name($this->_sessionType);
                    if (is_writable($this->_sessionPath)) {
                        session_save_path($this->_sessionPath);
                    }
                    break;
            }
            $params = session_get_cookie_params();
            session_set_cookie_params($params['lifetime'], $params['path'], Aitoc_Aitpagecache_Mainpage::getInstance(null)->aitGetCookieDomain());
            session_name('frontend');
            session_start();
            $this->_sessionRaw = session_encode();
            session_commit();
            unset($_SESSION);
        }
        return $this->_sessionRaw;
    }
}
 