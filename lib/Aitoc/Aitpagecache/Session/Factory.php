<?php
/**
 * @copyright  Copyright (c) 2010 AITOC, Inc. 
 */

class Aitoc_Aitpagecache_Session_Factory
{
    public static function get($type)
    {
        require_once(dirname(__FILE__).'/Universal.php');
        return new Aitoc_Aitpagecache_Session_Universal($type);
    }
    
} 
