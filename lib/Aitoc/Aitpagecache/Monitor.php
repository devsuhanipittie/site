<?php
class Aitoc_Aitpagecache_Monitor
{
    const TMP_PATH = 'var/ait_pagecache';
    const TMP_EMAIL_FILE = 'emails';

    protected $_isEnabled = false;
    protected $_loadLevel = 0;
    protected $_config = array();
    protected $_requestUri;
    protected $_session;
    protected $_customerBlockLoad;
    
    protected $_crawlers = array(
        'robot','spider','crawler','curl', //some common words inside user agent string
        'bingbot',
        'Googlebot',
        'YandexBot',
    );

    protected $_serverUriVars = array('HTTP_X_REWRITE_URL','UNENCODED_URL','REQUEST_URI','ORIG_PATH_INFO');

    protected $_excludedBlockPages = array(
        '/paypal/',
        '/sales/',
        '/sgps/',
        'isAjax=',
        'aitsys',
        'downloadable/',
        'booster-install',
        'persistent',
        '/checkout/',
        'aitpagecache/unavailable/return',
    );

    /**
     * Create a monitor class which verify if monitor is installed and used and setup loadLevel variable and cookie
     * @param array $boosterCacheFile Booster config file which should have instructions to monitor level validations
     */
    public function __construct($boosterCacheFile = array(), $sessionObject = null )
    {
        $this->_isEnabled = (bool)class_exists('Aitoc_Aitloadmon_Collect',false);
        if($this->_isEnabled) {
            $this->_loadLevel = (int)Aitoc_Aitloadmon_Collect::getLoadLevel();
            setcookie('aitloadmon_loadlevel', $this->_loadLevel);
        }
        $this->_config = $boosterCacheFile;
        $this->_session = $sessionObject;
    }

    /**
     * @return bool
     */
    public function isEnabled()
    {
        return $this->_isEnabled;
    }

    /**
     * @return int Load level from monitor or zero if not defined
     */
    public function getLoadLevel()
    {
        return $this->_loadLevel;
    }

    /**
     * Run monitor validations, preventing or allowing some groups to see site or not
     * Some scripts may prevent further code validations
     *
     * @return bool True if monitor is disabled or everything is fine
     */
    public function validate()
    {
        if(!$this->isEnabled()) return true;

        //checking if we need to disable robots
        if($this->isEmergencyLevelByKey('disallow_bots_level'))
        {
            $this->_blockBots();
            //return false;
        }

        if(!$this->isRobot() && $this->_blockCustomerCheck())
        {
            $this->_blockCustomers();
        }
        return true;
    }

    protected function _isAjax()
    {
        $isAjax = preg_match('/ajax/si',$this->_getRequestUri());
        if(!$isAjax)
        {
            $isAjax = ($this->_getHeader('X_REQUESTED_WITH') == 'XMLHttpRequest');
        }
        return $isAjax;
    }

    protected function _getHeader($header)
    {
        // Try to get it from the $_SERVER array first
        $temp = 'HTTP_' . strtoupper(str_replace('-', '_', $header));
        if (isset($_SERVER[$temp])) {
            return $_SERVER[$temp];
        }

        // This seems to be the only way to get the Authorization header on
        // Apache
        if (function_exists('apache_request_headers')) {
            $headers = apache_request_headers();
            if (isset($headers[$header])) {
                return $headers[$header];
            }
            $header = strtolower($header);
            foreach ($headers as $key => $value) {
                if (strtolower($key) == $header) {
                    return $value;
                }
            }
        }

        return false;
    }

    protected function _getCustomerBlockLoad()
    {
        if(!isset($this->_customerBlockLoad))
        {
            if(!$this->_session || !$this->_session->getSession() || !preg_match('/customer_block_load";(i:|s:1:")(\d)/msi',$this->_session->getSession(),$matches))
            {
                $this->_customerBlockLoad = 0;
            }
            else
            {
                $this->_customerBlockLoad = $matches[2];
            }
        }
        return $this->_customerBlockLoad;
    }

    protected function _blockCustomerCheck()
    {
        if(strpos($this->_getRequestUri(),'aitpagecache/unavailable/check'))
        {
            $this->_blockGetLoad();
        }
        if(strpos($this->_getRequestUri(),'aitpagecache/unavailable/mail') && isset($_POST['email']))
        {
            $this->_blockAddMail($_POST['email']);
        }
        if($this->_isAjax() || $this->_checkBlockExcludedPages() || !$this->_getCustomerBlockLoad() || ($this->_loadLevel < $this->_getCustomerBlockLoad()))
        {
            return false;
        }
        return true;
    }

    protected function _blockAddMail($email)
    {   //todo think of adding some additional info from session
        if(!file_exists($this->_getTmpPath()))
        {
            mkdir($this->_getTmpPath());
        }
        file_put_contents($this->_getTmpPath().DIRECTORY_SEPARATOR.self::TMP_EMAIL_FILE,$email.'|',FILE_APPEND);
        die();
    }

    protected function _getTmpPath()
    {
        return dirname($_SERVER['SCRIPT_FILENAME']).DIRECTORY_SEPARATOR.self::TMP_PATH;
    }

    protected function _checkBlockExcludedPages()
    {
        $excludedPages = $this->_getExcludedBlockPages();
        $uri = $this->_getRequestUri();
        foreach($excludedPages as $page)
        {
            if($page && strpos($uri,$page))
            {
                return true;
            }
        }
        return false;
    }

    protected function _getExcludedBlockPages()
    {
        $excludedBlockPages = array_merge($this->_excludedBlockPages, $this->_config[Aitoc_Aitpagecache_Mainpage::ADMIN_PATH]);
        if(isset($this->_config['block_exclude']))
        {
            foreach(explode("\n",$this->_config['block_exclude']) as $exclude)
            {
                $excludedBlockPages[] = trim($exclude);
            }
        }
        return $excludedBlockPages;
    }

    protected function _blockGetLoad()
    {
        $allowed = ($this->_getCustomerBlockLoad())?$this->_loadLevel<$this->_getCustomerBlockLoad():1;
        echo (int)$allowed;
        die();
    }

    protected function _blockCustomers()
    {
        $requestUri = $this->_getRequestUri();
        if(strpos($requestUri,'aitpagecache/unavailable'))
        {
            header("Location: /errors/404.php");
            die();
        }
        else
        {
            header('HTTP/1.1 503 Service Unavailable');
            $this->_setRequestUri($_SERVER['SCRIPT_NAME'].'/aitpagecache/unavailable/');
        }
    }

    protected function _setRequestUri($uri)
    {
        foreach($this->_serverUriVars as $key)
        {
            $_SERVER[$key] = $uri;
        }
    }

    protected function _getRequestUri()
    {
        if(!isset($this->_requestUri))
        {
            if (isset($_SERVER['HTTP_X_REWRITE_URL'])) { // check this first so IIS will catch
                $requestUri = $_SERVER['HTTP_X_REWRITE_URL'];
            } elseif (
                // IIS7 with URL Rewrite: make sure we get the unencoded url (double slash problem)
                isset($_SERVER['IIS_WasUrlRewritten'])
                && $_SERVER['IIS_WasUrlRewritten'] == '1'
                && isset($_SERVER['UNENCODED_URL'])
                && $_SERVER['UNENCODED_URL'] != ''
            ) {
                $requestUri = $_SERVER['UNENCODED_URL'];
            } elseif (isset($_SERVER['REQUEST_URI'])) {
                $requestUri = $_SERVER['REQUEST_URI'];
                // Http proxy reqs setup request uri with scheme and host [and port] + the url path, only use url path
                /*$schemeAndHttpHost = $this->getScheme() . '://' . $this->getHttpHost();
                if (strpos($requestUri, $schemeAndHttpHost) === 0) {
                    $requestUri = substr($requestUri, strlen($schemeAndHttpHost));
                }*/
            } elseif (isset($_SERVER['ORIG_PATH_INFO'])) { // IIS 5.0, PHP as CGI
                $requestUri = $_SERVER['ORIG_PATH_INFO'];
                if (!empty($_SERVER['QUERY_STRING'])) {
                    $requestUri .= '?' . $_SERVER['QUERY_STRING'];
                }
            }
            $this->_requestUri = $requestUri;
        }
        return $this->_requestUri;
    }

    /**
     * Validate current level of magento load with required from input.
     * Return TRUE is magento load level is equal or higher than configured one
     *
     * @param int $levelToCheck Number to which we should compage magento load time level
     * @return bool
     */
    public function isEmergencyLevel( $levelToCheck )
    {
        if( (int)$levelToCheck <= $this->getLoadLevel() ) {
            //server IS overloaded
            return true;
        } else {
            //server NOT overloaded
            return false;
        }
    }

    /**
     * Validate current level of magento load with required from input. Use string key and extract level from config array
     * If value is not found - allow access
     *
     * @param string $key Key to magento booster config array which should contain configured load level from backend
     * @return bool
     */
    public function isEmergencyLevelByKey( $key )
    {
        if(isset($this->_config[$key]) && $this->_config[$key] > 0)
        {
            return $this->isEmergencyLevel((int)$this->_config[$key]);
        }
        return false;
    }

    /**
     * Check if current user is bot and block it with HTTP 503 error
     * @return bool
     */
    protected function _blockBots()
    {
        if(!$this->isRobot()) {
            return false;
        }
        header('Retry-After: 3600', true, 503);
        exit('HTTP/1.1 503 Service Temporarily Unavailable');
    }

    /**
     * Check user agent from SERVER for robots
     * @return bool
     */
    public function isRobot() {

        if(!isset($_SERVER['HTTP_USER_AGENT'])) {
            return false;
        }
        $userAgent = $_SERVER['HTTP_USER_AGENT'];
        //$userAgent = 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)';
        //$userAgent = 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)';
        return preg_match( '/'.implode('|', $this->_crawlers).'/i', $userAgent);
    }
}
