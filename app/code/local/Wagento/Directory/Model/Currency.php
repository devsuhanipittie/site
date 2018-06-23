<?php
/**
 * @package     Wagento_Directory
 * @version     1.0.0
 * @author      Wagento Creative LLC. <support@wagento.com>
 * @copyright   Copyright © 2016 Wagento Creative LLC.
 */
class Wagento_Directory_Model_Currency extends Mage_Directory_Model_Currency
{
    /**
     * Format price to currency format
     *
     * @param float $price
     * @param array $options
     * @param bool $includeContainer
     * @param bool $addBrackets
     * @return string
     */
    public function format($price, $options = array(), $includeContainer = true, $addBrackets = false)
    {
        return $this->formatPrecision($price, 0, $options, $includeContainer, $addBrackets);
    }
}
