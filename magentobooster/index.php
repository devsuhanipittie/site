<?php
/**
 * @copyright  Copyright (c) 2010 AITOC, Inc.
 */
if (version_compare(phpversion(), '5.2.0', '<')===true) {
    echo  '<div style="font:12px/1.35em arial, helvetica, sans-serif;"><div style="margin:0 0 25px 0; border-bottom:1px solid #ccc;"><h3 style="margin:0; font-size:1.7em; font-weight:normal; text-transform:none; text-align:left; color:#2f2f2f;">Whoops, it looks like you have an invalid PHP version.</h3></div><p>Magento supports PHP 5.2.0 or newer. <a href="http://www.magentocommerce.com/install" target="">Find out</a> how to install</a> Magento using PHP-CGI as a work-around.</p></div>';
    exit;
}

/**
 * Error reporting
 */
error_reporting(E_ALL | E_STRICT);

/**
 ***********************************************************
 * AITOC MAGENTO BOOSTER PREPROCESSING
 */
function ait_cache_getFilePath($relativePath)
{
    $path = dirname(__FILE__);
    return is_file($path . $relativePath) && is_readable($path . $relativePath) ? $path . $relativePath : (is_file($path . '/..' . $relativePath) && is_file($path . '/..' . $relativePath) ? $path . '/..' . $relativePath : null);
}

$maintenanceFile = 'maintenance.flag';

if (file_exists($maintenanceFile)) {
    include_once ait_cache_getFilePath('/errors/503.php');
    exit;
}

$mainpage = ait_cache_getFilePath('/lib/Aitoc/Aitpagecache/Mainpage.php');
if($mainpage) {
    include_once $mainpage;

    $booster = Aitoc_Aitpagecache_Mainpage::getInstance(dirname(__FILE__));

    if (!$booster->_enableCache)
    {
        $booster->aitDebugTop("Please go to <span style='color: #0000CB;'>System > Manage Aitoc Modules</span> to enable the extension.<br />
        Then go to System > Configuration > Advanced > Magento Booster to manage settings.
        Check <a href='http://www.aitoc.com/en/aitdownloadablefiles/download/aitfile/aitfile_id/231/' target='_blank'>User Manual</a> for details.");
    }

    if ($result = $booster->loadPage())
    {
        echo $result;
        exit;
    }
    if($booster->_enableCache && $booster->_canCachePage==false)
    {
        if($booster->checkAdmin())
        {
            $booster->aitDebugTop("Admin area cannot be cached. The extension doesn't affect the way your Admin Panel functions.");
        }
        else
        {
        	if ($booster->_aitDebugMessage)
        	{
        		$booster->aitDebugTop($booster->_aitDebugMessage);
        	}
        	else 
        	{
            	$booster->aitDebugTop("Page cannot be cached for some undefined reason.");
        	}
        }
    }
}
/**
 * END AITOC MAGENTO BOOSTER PREPROCESSING
 ***********************************************************
 */

/**
 ***********************************************************
 * MAGENTO DEFAULT INDEX.PHP CODE
 */
/**
 * Compilation includes configuration file
 */
define('MAGENTO_ROOT', getcwd()); //magento 1.7+ define 

$compilerConfig = ait_cache_getFilePath('/includes/config.php');
if (file_exists($compilerConfig)) {
    include $compilerConfig;
}

$mageFilename = ait_cache_getFilePath('/app/Mage.php');

if (!file_exists($mageFilename)) {
    if (is_dir('downloader')) {
        header("Location: downloader");
    } else {
        echo $mageFilename." was not found";
    }
    exit;
}

require_once $mageFilename;

#Varien_Profiler::enable();

if (isset($_SERVER['MAGE_IS_DEVELOPER_MODE'])) {
    Mage::setIsDeveloperMode(true);
}

#ini_set('display_errors', 1);

umask(0);

/* Store or website code */
$mageRunCode = isset($_SERVER['MAGE_RUN_CODE']) ? $_SERVER['MAGE_RUN_CODE'] : '';

/* Run store or run website */
$mageRunType = isset($_SERVER['MAGE_RUN_TYPE']) ? $_SERVER['MAGE_RUN_TYPE'] : 'store';

Mage::run($mageRunCode, $mageRunType);

/**
 * END MAGENTO DEFAULT INDEX.PHP CODE
 ***********************************************************
 */

/**
 ***********************************************************
 * AITOC MAGENTO BOOSTER POSTPROCESSING
 */
if(isset($booster) && $booster->_enableCache && $booster->_canCachePage)
{
	$fileContents = ob_get_contents();
	$booster->aitDebugTop(Mage::helper('aitpagecache')->saveContentToCache($booster->getCacheFilePath(), $fileContents));
    $booster->saveStatistics();
}
/**
 * END AITOC MAGENTO BOOSTER FUNCTIONS
 ***********************************************************
 */
