<?php

abstract class TM_CheckoutSuccess_Model_Html_Filter_Abstract
    implements Zend_Filter_Interface
{
    /**
     * Cunstruction regular expression
     */
    private $_constructionPattern = '/{{([a-z,A-Z]{0,30})(.*?)}}/si';

    private $_salesObject;

    /**
     * Filter the string as template.
     *
     * @param string $value
     * @return string
     */
    public function filter($value)
    {
        if (preg_match_all($this->getConstructionPattern(), $value, $constructions, PREG_SET_ORDER)) {
            foreach ($constructions as $index => $construction) {
                $replacedValue = '';
                $callback = array($this, $construction[1].'Directive');
                if (is_callable($callback)) {
                    try {
                        $replacedValue = call_user_func($callback, $construction);
                    } catch (Exception $e) {
                        throw $e;
                    }
                }

                $value = str_replace($construction[0], $replacedValue, $value);
            }
        }

        return $value;
    }

    /**
     * Get construction pattern
     *
     * @return string
     */
    public function getConstructionPattern()
    {
        return $this->_constructionPattern;
    }

    /**
     * Set construction pattern
     *
     * @param string $pattern
     */
    public function setConstructionPattern($pattern)
    {
        $this->_constructionPattern = $pattern;
        return $this;
    }

    /**
     * [setSalesObject description]
     * @param [type] $object [description]
     */
    public function setSalesObject($object)
    {
        $this->_salesObject = $object;
        return $this;
    }

    public function getSalesObject()
    {
        return $this->_salesObject;
    }

    public function currencySymbolDirective()
    {
        return Mage::app()->getLocale()
            ->currency($this->currencyDirective())->getSymbol();
    }

    public function customerIdDirective()
    {
        return $this->_salesObject->getCustomerId();
    }

    public function customerEmailDirective()
    {
        $customerId = $this->customerIdDirective();
        if (empty($customerId)) {
            return '';
        }

        return Mage::getModel('customer/customer')->load($customerId)->getEmail();
    }

}
