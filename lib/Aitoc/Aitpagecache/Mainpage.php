<?php
/**
 * @copyright  Copyright (c) 2011 AITOC, Inc.
 */

class Aitoc_Aitpagecache_Mainpage {

    // define default booster params
    protected $_aitDir = null;
    protected $_adminPath = array();

    protected $_debugMessages = array();
    protected $_timeOver;
    protected $_timeStart;
    protected $_session = null;
    protected $_cacheFile = null;
    protected $_currency = null;

    private $_mayCache = null;

    /**
     *
     * @var Aitoc_Aitpagecache_Monitor
     */
    protected $_monitor = null;
    public $_canCachePage = true;
    public $_cacheFileParams = array('requestUri'=>'','cacheFilePath'=>'');
    public $_enableCache = false;
    public $_loadedFromCache = false;
    static protected $_instance;
    protected $_md5;
    //equal to system.xml fields
    const QUOTE_VALUE = 'enable_for_quote';
    const LOGIN_VALUE = 'enable_for_logined';
    const ADMIN_AREA_NAMES = 'disabled_admin_session';
    const EXCLUDED_PAGES = 'excluded_pages';
    const ENABLE_DEBUG = 'enable_debug';
    const DEBUG_ALLOW_IPS = 'debug_allow_ips';
    //cookie ids, used in Observer|helper
    const NOT_EMPTY_CART = 'aitnotemptycart';

    const COOKIE_CART_ID = 'aitpagecartitems';
    const COOKIE_CHECKOUT_ID = 'aitpagecartcheckout';
    const DEFAULT_COOKIE_ID = 'aitpagecache'; //is cache enabled - for cache File
    const PERSISTENT_COOKIE_ID = 'persistent_shopping_cart'; // magento 1.6+/1.11+
    const RESTRICTION_COOKIE = 'cookie_restriction'; //web/cookie/cookie_restriction config is set
    const ADMIN_PATH = 'admin_paths';
    const ADMIN_PAGE_CACHE = 'aitadmpagecache';

    # Change to true if you can see debug
    protected $_aitDebug = false;
    public $_aitDebugMessage = null;
    # Excludes controllers and blocks.
    # You can add to array your own values.
    protected $_pageExcludes = array(
        '/api/',
        '/checkout/',
        '/paypal/',
        '/sales/',
        '/sgps/',
        'isAjax=',
        'aitsys',
        'product_compare',
        'wishlist',
        'customer/account',
        'customer/address',
        'sales/order',
        'review/customer',
        'tag/customer',
        'newsletter/manage',
        'downloadable/',
        'currency/switch',
        'adjnav',
        'booster-install',
        'catalog/gifts',
        'catalog/adjgiftreg',
        '?___store=',
        'aitproductslists',
        'persistent'
    );

    protected $_notifications = array(
        'disabled_cache'    => 'Magento Booster cache is disabled. Please go to <span style="color: #0000CB;">System -> Cache management</span> to enable Magento Booster caching.',
        'post_request'      => '$_POST requests cannot be cached.',
        'admin_session'     => 'Magento Booster is disabled for all the front-end pages when admin browses both back panel and front-end pages within the same browser.<br/>
                                You are logged in as admin at the moment. Please log out to see how the caching works for customers or enable Magento Booster caching for admin in the <span style="color: #0000CB;">System -> Configuration -> Advanced -> Magento Booster</span>. ',
        'logged_user'       => 'Magento Booster caches the pages for guests and does not cache the pages for logged in user by default.<br/>
        	                    Please go to <span style="color: #0000CB;">System -> Configuration -> Advanced -> Magento Booster</span> to enable caching for logged in users.',
        'frontend_editor'   => 'Front-End Editor requests cannot be cached.',
        'on_checkout'       => 'Checkout process cannot be cached.',
        'aitoc_exclusion'   => 'Page cannot be cached as the current page is specified in the Magento Booster exception array.',
        'user_exclusion'    => 'Page cannot be cached. This page is added by admin to the exclusions list.<br/>
                                To manage the exclusions go to <span style="color: #0000CB;">System -> Configuration -> Advanced -> Magento Booster -> General Settings -> Cache exclusions</span>.',
        'basketfull'        => 'By default caching is turned off for a specific user after s/he adds an item to cart.<br/>
                                Please go to <span style="color: #0000CB;">System -> Configuration -> Advanced -> Magento Booster</span> to enable caching for customers after they put product in the cart.',
        'notifications'     => 'Page cannot be cached while there are notification messages for the customer.'
    );

    protected function __construct()
    {
        $this->timeDebugStart();
        $this->_md5hash();
        ob_start();
        register_shutdown_function(array($this,'shutdown'));
    }

    function shutdown()
    {
        $this->timeDebugOver();
        if ($this->isAitDebugEnabled() && !$this->_isAjaxRequest()) {
            $upContent = $this->aitDebug();
            $content = ob_get_contents();
            ob_end_clean();
            $content = preg_replace('/(<body.*?>)/msi', '$1' . $upContent, $content);
            echo $content;
        }
    }

    protected function _isAjaxRequest()
    {
        $requestUri = $this->_cacheFileParams['requestUri'];
        return (bool)strpos($requestUri,"isAjax=true");
    }

    static public function getInstance($aitDir)
    {
        if (!self::$_instance)
        {
            self::$_instance = new self($aitDir);
            try
            {
                self::$_instance->init($aitDir);
            }
            catch (Exception $exc)
            {
                throw $exc;
            }
        }
        return self::$_instance;
    }
    public function getSessionKey()
    {
        return $this->_md5;
    }
    public function init($aitDir = "")
    {
        $this->_aitDir = $aitDir;

        $this->getCacheConfigFile();
        $this->_adminPath = $this->_aitGetAdminPath();
        if ($this->isModuleEnabled() && $this->_sendCookie()) {
            $this->getMonitor()->validate(); //use _cacheFile so should be loaded after getCacheConfigFile()
            $this->_getURL();
            $this->_getCachePath();
            $this->_canCachePage = $this->canCachePage();
        }

        return $this;
    }

    public function isModuleEnabled()
    {
        if ($this->_enableCache) {
            return $this->_enableCache;
        }

        $enable = false;
        $config  = simplexml_load_file($this->getFilePath($this->_aitDir, '/app/etc/modules/Aitoc_Aitpagecache.xml'));
        if ($config) {
            $enable = (string)$config->modules->Aitoc_Aitpagecache->active;
        }
        if ($enable == "false") {
            return $this->_enableCache = false;
        }
        return $this->_enableCache = true;
    }

    /**
     * Create and return an object of Monitor validator class
     *
     * @return type Aitoc_Aitpagecache_Monitor
     */
    public function getMonitor() {
        if(is_null($this->_monitor)) {
            require_once($this->getFilePath($this->_aitDir, '/lib/Aitoc/Aitpagecache/Monitor.php'));
            $this->_monitor = new Aitoc_Aitpagecache_Monitor( $this->_cacheFile , $this->_getSession() );
        }
        return $this->_monitor;
    }

    protected function _md5hash()
    {
        return $this->_md5 = md5(uniqid());
    }

    public function loadPage()
    {
        if (!$this->_enableCache || !$this->_canCachePage || !($content = $this->loadCacheFile())) {
            return false;
        }
        $this->aitDebugTop('<b style="color:green">Loaded from cache.</b>');
        $this->_loadedFromCache = true;
        return $content;
    }


    protected function loadCacheFile()
    {
        $cacheFilePath = $this->_cacheFileParams['cacheFilePath'];
        if(file_exists($cacheFilePath))
        {
            header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
            header('Pragma: no-cache');
            header('Content-type: text/html');
            return file_get_contents($cacheFilePath);
        }
        $cacheFilePath = $this->get404Name($cacheFilePath);
        if(file_exists($cacheFilePath))
        {

            header("HTTP/1.0 404 Not Found");
            header("Status: 404 Not Found");
            return file_get_contents($cacheFilePath);
        }
        return null;
    }

    /**
     * Return name of file with 404 error
     *
     * @return string
     */
    static public function get404Name($cacheFilePath = null)
    {
        if (empty($cacheFilePath)) {
            return false;
        }
        return dirname($cacheFilePath).'/404ERROR_'.basename($cacheFilePath);
    }

    function aitGetCookieDomain()
    {
        $s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on") ? "s" : "";
        $protocol = $this->strleft(strtolower($_SERVER["SERVER_PROTOCOL"]), "/").$s;
        $host = $protocol . '://' . $_SERVER['HTTP_HOST'] . '/';

        $cookieConfigPath = $this->getFilePath($this->_aitDir, '/var/magentobooster/cookie_config.ser');
        $cookieConfig = array();

        if (file_exists($cookieConfigPath)) {
            $cookieConfig = unserialize(file_get_contents($cookieConfigPath));
        }

        if (count($cookieConfig)==0 || key_exists($host, $cookieConfig)) {
            if (!empty($cookieConfig[$host])) {
                return $cookieConfig[$host];
            }
            // default
            return $_SERVER['HTTP_HOST'];
        } else {
            return false; // url is not in base url array
        }
    }

    /**
     * Send frontend cookie
     * @return boolean true
     */
    protected function _sendCookie()
    {
        // set frontend cookie if it has not been set by Magento
        if (!isset($_COOKIE['frontend'])) {
            if (
                ($domain = $this->aitGetCookieDomain()) &&
                setcookie('frontend', $this->_md5, time() + 3600, '/', ltrim($domain, "\x00..\x20"), false, true)
            ) {
                return true;
            } else {
                return false;
            }
        } else {
            return true;
        }
        return false;
    }

    /**
     * Get magento admin path from app/etc/local.xml
     * @return array
     */
    private function _aitGetAdminPath() {

        $sLocalXmlPath = $this->getFilePath($this->_aitDir, '/app/etc/local.xml');

        $sAdminAreaPath = array('admin', 'aitsys');
        if (file_exists($sLocalXmlPath)){
            $sLocalXmlContent = file_get_contents($sLocalXmlPath);
            if (preg_match_all('#<frontName><!\[CDATA\[(.*?)\]\]></frontName>#', $sLocalXmlContent, $m)) {
                //preg_match_all to select all admin path, even xml contains some commented parts with same data
                if(is_array($m[1])) {
                    foreach($m[1] as $value) {
                        $sAdminAreaPath[] = $value;
                    }
                } else {
                    $sAdminAreaPath[] = $m[1];
                }

            }
        }
        if(!empty($this->_cacheFile[self::ADMIN_AREA_NAMES]))
        {
            foreach( $this->_cacheFile[self::ADMIN_AREA_NAMES] as $name_admin)
            {
                if(!empty($name_admin))
                    $sAdminAreaPath[]=$name_admin;
            }
        }
        //to remove equal words from xml
        $sAdminAreaPath = array_unique($sAdminAreaPath);
        $this->_pageExcludes = array_merge($this->_pageExcludes, $sAdminAreaPath);
        return $this->_adminPath = $sAdminAreaPath;
    }

    /**
     * Create Aitoc_Aitpagecache_Mobile_Detect class object.
     * @return object Aitoc_Aitpagecache_Mobile_Detect
     */
    private function mobileDetect()
    {
        require_once($this->getFilePath($this->_aitDir, '/lib/Aitoc/Aitpagecache/Mobile/Detect.php'));
        return new Aitoc_Aitpagecache_Mobile_Detect();
    }

    private function _getCacheDir()
    {
        $detect = $this->mobileDetect();
        // CACHE DIRECTORY PATH
        $cacheDir = $this->getDirPath($this->_aitDir, '/media/');
        $cacheDir .= 'pages/';

        if ($detect->isMobile())
        {
            $cacheDir .= $detect->getDeviceType() . "/";
        }
        return $cacheDir;
    }

    /**
     * Get current HTTP protocol
     * @param type $s1
     * @param type $s2
     * @return string
     */
    private function strleft($s1, $s2)
    {
        return substr($s1, 0, strpos($s1, $s2));
    }

    /**
     * Get current cache page file name
     * @return array
     */
    private function _getCachePath()
    {
        if ($this->_checkGetParam('noMagentoBoosterCache'))
        {
            return false;
        }

        $cacheFilePath = $this->getCacheFilePathByUrl($this->_cacheFileParams['requestUri']);

        return $this->_cacheFileParams['cacheFilePath'] = $cacheFilePath;
    }

    public function getCacheFilePathByUrl($requestUri, $addCookiePart = false)
    {
        // GET MD5 HASH OF CURRENT REQUEST URI
        $md5_requestUri = md5($requestUri.($addCookiePart ? $this->_getURLCookiePart() : ''));
        // like /media/pages/(0-9a-z)/
        $subCacheDir = $this->_getCacheDir() . substr($md5_requestUri, 0, 1) . '/' . $this->_getCurrencyDir();
        // GET FULL CACHED FILE PATH

        $cacheFilePath = $subCacheDir . $md5_requestUri . '.html';

        return $cacheFilePath;
    }

    protected function _getCurrencyDir()
    {
        if(is_null($this->_currency))
        {
            if(!empty($_COOKIE["currency"]))
            {
                $this->_currency = $_COOKIE["currency"].'/';
            }
            elseif($session = $this->_getSession())
            {
                $session = $session->getSession();
                $matches = array();
                preg_match('/"currency_code";s:(.*?):"(.*?)"/', $session, $matches);
                if(empty($matches[2]))
                {
                    $this->_currency = '';
                }
                else
                {
                    $this->_currency = $matches[2].'/';
                    setcookie('currency', $matches[2], time() + 3600, '/', ltrim($this->aitGetCookieDomain(), "\x00..\x20"), false, true);
                }
            }
        }

        return $this->_currency;
    }

    public function getURL()
    {
        if(!empty($this->_cacheFileParams['requestUri']))
        {
            return $this->_cacheFileParams['requestUri'];
        }
        return $this->_getURL();
    }
    /**
     * Get current url
     * @return array
     */
    private function _getURL( $itemsInCart = false )
    {
        if ($this->_checkGetParam('noMagentoBoosterCache'))
        {
            return false;
        }
        $serverrequri = $_SERVER['PHP_SELF'];
        if(isset($_SERVER['REQUEST_URI']))
        {
            $serverrequri = $_SERVER['REQUEST_URI'];
        }
        $s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on") ? "s" : "";
        $protocol = $this->strleft(strtolower($_SERVER["SERVER_PROTOCOL"]), "/").$s;
        $port = ($_SERVER["SERVER_PORT"] == "80") ? "" : (":".$_SERVER["SERVER_PORT"]);

        $cookie = $this->_getURLCookiePart($itemsInCart);

        return $this->_cacheFileParams['requestUri'] = $protocol."://".$_SERVER['SERVER_NAME'].$port.$serverrequri.$cookie;
    }

    private function _getURLCookiePart( $itemsInCart = false )
    {
        $cookie = "";
        // CHECK STORE COOKIE
        if(isset($_COOKIE['store'])) {
            $cookie = $_COOKIE['store'];
        }
        if(isset($this->_cacheFile[self::QUOTE_VALUE]) && $this->_cacheFile[self::QUOTE_VALUE] == 1) {
            if($itemsInCart !== false && $itemsInCart > 0)  {
                $cookie .= self::COOKIE_CART_ID . '=' .$itemsInCart;
            } elseif(isset($_COOKIE[self::COOKIE_CART_ID]) && $_COOKIE[self::COOKIE_CART_ID] > 0) {
                $cookie .= self::COOKIE_CART_ID . '=' .$_COOKIE[self::COOKIE_CART_ID];
            }
        }
        if(isset($this->_cacheFile[self::LOGIN_VALUE]) && $this->_cacheFile[self::LOGIN_VALUE] == 1) {
            $session = $this->_getSession();
            if($session!==false && $session->isLoggedIn() === true)
            {
                $cookie .= 'loggedin';
            }
        }
        if(isset($_COOKIE[self::PERSISTENT_COOKIE_ID]) && $_COOKIE[self::PERSISTENT_COOKIE_ID])
        {
            $session = $this->_getSession();
            if($session===false || $session->isLoggedIn() !== true)
            {
                $cookie .= 'persist';
            }
        }
        if(isset($this->_cacheFile[self::RESTRICTION_COOKIE]) && $this->_cacheFile[self::RESTRICTION_COOKIE] == 1) {
            if(!isset($_COOKIE['user_allowed_save_cookie'])) {
                $cookie .= self::RESTRICTION_COOKIE;
            }
        }

        return $cookie;
    }

    private function _checkGetParam($param)
    {
        if (isset($_GET[$param]))
        {
            return true;
        }
        return false;
    }

    public function aitDebugTop($text = "")
    {
        if($this->isAitDebugEnabled() && $text) {
            return $this->_debugMessages[] = $text;
        }
    }

    public function aitDebug()
    {
        if (!function_exists('ait_cache_getFilePath')) {
            $this->aitDebugTop('Warning! The index.php file hasn’t been replaced.');
            $this->aitDebugTop(
                'Please back up your index.php file and copy new index.php from the /magentobooster/ folder to the root directory of your Magento installation.'
            );
            $this->aitDebugTop(
                'NOTE: If your index.php file was modified, don’t forget to apply the changes to the new index.php.'
            );
        }

        $this->aitDebugStatistics();

        $content = join("<br />",$this->_debugMessages);

        $moduleEnabled = $this->isModuleEnabled() ?
            '<span style="color: green">ENABLED</span>' :
            '<span style="color: red">DISABLED</span>';
        $cacheEnabled = (isset($this->_cacheFile[self::DEFAULT_COOKIE_ID]) && $this->_cacheFile[self::DEFAULT_COOKIE_ID]) ?
            '<span style="color: green">ENABLED</span>' :
            '<span style="color: red">DISABLED</span>';

        return "<div style='text-align:center;color:#424242;background:#ffffbb;'><b>Aitoc Debug (Magento Booster is ".$moduleEnabled."; caching is ".$cacheEnabled.")</b><br />" . $content . "</div>";
    }

    private function _getTime()
    {
        $mtime = microtime();
        $mtime = explode(" ",$mtime);
        $mtime = $mtime[1] + $mtime[0];
        return $mtime;
    }
    public function timeDebugStart()
    {
        $this->_timeStart = $this->_getTime();
    }

    public function timeDebugOver()
    {
        return $this->_timeOver = $this->_getTime();
    }

    private function getMemoryUsage()
    {
        if( function_exists('memory_get_usage') )
        {
            $mem_usage = memory_get_usage(true);
            if ($mem_usage < 1024)
                echo $mem_usage." bytes";
            elseif ($mem_usage < 1048576)
                $memory_usage = round($mem_usage/1024,2)." Kb";
            else
                $memory_usage = round($mem_usage/1048576,2)." Mb";
        }
        return  $memory_usage;
    }

    private function _getSession() {
        if(!is_null($this->_session))
            return $this->_session;
        if ($this->_sendCookie()) {
            $config  = simplexml_load_file($this->getFilePath($this->_aitDir, '/app/etc/local.xml'));
            if($config!= false)
            {
                $session_save = (string)$config->global->session_save;
                if($session_save)
                {
                    require_once($this->getFilePath($this->_aitDir, '/lib/Aitoc/Aitpagecache/Session/Universal.php'));
                    $this->_session = new Aitoc_Aitpagecache_Session_Universal($session_save);
                    if($this->_session)
                    {
                        $this->_session->setConfig($config);
                    }
                    return $this->_session;
                }
            }
        }
        return false;
    }

    public function getCacheConfigFile() {
        // read magento cache config file
        if(is_null($this->_cacheFile)) {
            $useCachePath = $this->getFilePath($this->_aitDir, '/var/magentobooster/use_cache.ser');
            if(file_exists($useCachePath)) {
                $this->_cacheFile = unserialize(file_get_contents($useCachePath));
            }
            if(!isset($this->_cacheFile[self::QUOTE_VALUE])) $this->_cacheFile[self::QUOTE_VALUE] = 0;
            if(!isset($this->_cacheFile[self::LOGIN_VALUE])) $this->_cacheFile[self::LOGIN_VALUE] = 0;
            if(!isset($this->_cacheFile[self::RESTRICTION_COOKIE])) $this->_cacheFile[self::RESTRICTION_COOKIE] = 0;
            if(!isset($this->_cacheFile[self::ADMIN_AREA_NAMES])) $this->_cacheFile[self::ADMIN_AREA_NAMES] = array();
            if(!isset($this->_cacheFile[self::EXCLUDED_PAGES])) $this->_cacheFile[self::EXCLUDED_PAGES] = array();
            if(!isset($this->_cacheFile[self::ENABLE_DEBUG])) $this->_cacheFile[self::ENABLE_DEBUG] = 0;
            if(!isset($this->_cacheFile[self::DEBUG_ALLOW_IPS])) $this->_cacheFile[self::DEBUG_ALLOW_IPS] = array();
            $this->_cacheFile[self::ADMIN_PATH] = $this->_adminPath;
        }
        return $this->_cacheFile;
    }

    public function canCachePage()
    {
        $requestUri = $this->_cacheFileParams['requestUri'];

        if(! ($this->_cacheFile[self::EXCLUDED_PAGES]))
            $this->_cacheFile[self::EXCLUDED_PAGES] = array($this->_cacheFile[self::EXCLUDED_PAGES]);

        //$_pageExcludes = array_merge($this->_pageExcludes, $this->_cacheFile[self::EXCLUDED_PAGES]);
        $this->getCacheConfigFile();

        $this->_mayCache = true;

        if(is_array($this->_cacheFile)) {
            if(!isset($this->_cacheFile['aitpagecache']) || !$this->_cacheFile['aitpagecache']) {
                $this->setDebugMessage($this->_notifications['disabled_cache']);
                $this->_mayCache = false;
                return $this->_mayCache;
            }
        }

        if(isset($_COOKIE[self::ADMIN_PAGE_CACHE])) {
            $this->setDebugMessage($this->_notifications['admin_session']);
            $this->_mayCache = false;
            return $this->_mayCache;
        }

        foreach($this->_pageExcludes as $str) {
            if(!empty($str) && false !== strpos($requestUri, $str)) {
                $this->setDebugMessage($this->_notifications['aitoc_exclusion']);
                $this->_mayCache = false;
                return $this->_mayCache;
            }
        }

        foreach($this->_cacheFile[self::EXCLUDED_PAGES] as $str) {
            if(!empty($str) && false !== strpos($requestUri, $str)) {
                $this->setDebugMessage($this->_notifications['user_exclusion']);
                $this->_mayCache = false;
                return $this->_mayCache;
            }
        }

        // disable caching if form posts
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $this->setDebugMessage($this->_notifications['post_request']);
            $this->_mayCache = false;
            return $this->_mayCache;
        }

        // front-end editor cookie
        if(isset($_COOKIE['aiteasyedit'])) {
            $this->setDebugMessage($this->_notifications['frontend_editor']);
            $this->_mayCache = false;
            return $this->_mayCache;
        }

        $session = $this->_getSession();
        if($session!==false)
        {
            if($this->_cacheFile[self::LOGIN_VALUE] == 0 && $session->isLoggedIn() === true) {
                //if cache for logined-in users is disabled && user is logined in - can't cache page
                $this->setDebugMessage($this->_notifications['logged_user']);
                $this->_mayCache = false;
                return $this->_mayCache;
            }
            if($session->hasMessages() === true)
            {
                $this->setDebugMessage($this->_notifications['notifications']);
                $this->_mayCache = false;
                return $this->_mayCache;
            }
        }

        if(isset($_COOKIE['aitnotemptycart'])) {
            //checking if cache qoute wasn't disabled
            if($this->_cacheFile[self::QUOTE_VALUE] == 0 && !isset($_COOKIE[self::DEFAULT_COOKIE_ID])) {
                //there is a probability that cache for quoted users will be disabled on line site - after that users with quote will still see cached pages and will cache incorrect pages with quote.
                //so if quote cache is disabled, but 'ignorebooster' cookie is not set - we will not allow cache pages.
                $this->setDebugMessage($this->_notifications['basketfull']);
                $this->_mayCache = false;
                return $this->_mayCache;
            }
        }

        return $this->_mayCache;
    }

    public function checkQuoteItems() {
        $quote = Mage::getSingleton('checkout/session')->getQuote();
        if($quote != null) {
            $total = $quote->getItemsCount();
            $helper = Mage::helper('aitpagecache');
            if($total) {//may be null
                $amount = $helper->countQuoteItems($quote);
                $helper->setCacheCookie(self::COOKIE_CART_ID, $amount);
                return $amount;
            } elseif(isset($_COOKIE[self::COOKIE_CART_ID])) {
                Mage::helper('aitpagecache')->delCacheCookie(self::COOKIE_CART_ID);
            }
        }
        return false;
    }

    public function getCacheFilePath()
    {
        //rechecking total items in quote before saving page
        $itemsIncart = false;
        if($this->_cacheFile[self::QUOTE_VALUE]) {
            $itemsIncart = $this->checkQuoteItems();
        }
        if($this->_cacheFile[self::QUOTE_VALUE] || $this->_cacheFile[self::LOGIN_VALUE]) {
            $cacheFilePath = $this->_getURL($itemsIncart);
        }
        return $this->_getCachePath();
    }

    public function checkAdmin($requestUri = null)
    {
        if(empty($requestUri))
            $requestUri = $this->_cacheFileParams['requestUri'];
        foreach($this->_adminPath as $adminPath) {
            if(false !== strpos($requestUri, $adminPath)) {
                return true;
            }
        }
        return false;
    }

    public function getFilePath($aitDir, $relativePath)
    {
        return is_file($aitDir . $relativePath) && is_readable($aitDir . $relativePath) ? $aitDir . $relativePath : (is_file($aitDir . '/..' . $relativePath) && is_file($aitDir . '/..' . $relativePath) ? $aitDir . '/..' . $relativePath : null);
    }

    public function getDirPath($aitDir, $relativePath)
    {
        return is_dir($aitDir . $relativePath) ? $aitDir . $relativePath : (is_dir($aitDir . '/..' . $relativePath) ? $aitDir . '/..' . $relativePath : null);
    }

    public function setDebugMessage($messageText)
    {
        $this->_aitDebugMessage = $messageText;
        return true;
    }

    public function isAitDebugEnabled()
    {
        //setting in $_aitDebug more priority than setting in admin area
        if ($this->isModuleEnabled() && $cofigData = $this->_cacheFile) {
            if (
                ($cofigData['enable_debug'] && !$cofigData['debug_allow_ips']) ||
                ($cofigData['enable_debug'] && in_array($_SERVER['REMOTE_ADDR'], $cofigData['debug_allow_ips']))
            ) {
                return $cofigData['enable_debug'];
            }
            return false;
        }

        return $this->_aitDebug ? $this->_aitDebug : false;
    }

    private function _getStatisticsLogFile()
    {
        return $this->_getCacheDir() . 'statistics.log';
    }

    public function saveStatistics()
    {
        $this->timeDebugOver();
        $file = end(explode('/', $this->getCacheFilePath()));
        $time = round($this->_timeOver - $this->_timeStart, 6);
        $memory = $this->getMemoryUsage();
        file_put_contents($this->_getStatisticsLogFile(), $file . ':' . $time . ':' . $memory . "\n", FILE_APPEND);
    }

    public function aitDebugStatistics()
    {
        $time = round($this->_timeOver - $this->_timeStart, 6);
        $memory = $this->getMemoryUsage();

        $this->aitDebugTop('It has taken <b>'. $time .' sec(s)</b> and <b>'. $memory .'</b> of RAM to generate this page.');

        if ($this->_loadedFromCache) {
            $file = end(explode('/', $this->_cacheFileParams['cacheFilePath']));
            $log = file_get_contents($this->_getStatisticsLogFile());

            $startPos = strrpos($log, $file);
            if ($startPos!==false) {
                $length = 0;
                $endPos = strpos($log, "\n", $startPos);
                if ($endPos!==false) {
                    $length = $endPos - $startPos;
                }
                $line = substr($log, $startPos, $length);
                if ($line) {
                    list($file, $oldTime, $oldTotalMemory) = explode(':', $line);
                    if ($oldTime && $oldTotalMemory) {
                        $this->aitDebugTop('FYI: it would have taken <b>'. $oldTime .' sec(s)</b> and <b>'. $oldTotalMemory .'</b> of RAM to generate this page without caching.');
                    }
                }
            }
        }
    }
}
