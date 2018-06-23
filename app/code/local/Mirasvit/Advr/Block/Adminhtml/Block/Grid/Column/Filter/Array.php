<?php
/**
 * Mirasvit
 *
 * This source file is subject to the Mirasvit Software License, which is available at https://mirasvit.com/license/.
 * Do not edit or add to this file if you wish to upgrade the to newer versions in the future.
 * If you wish to customize this module for your needs.
 * Please refer to http://www.magentocommerce.com for more information.
 *
 * @category  Mirasvit
 * @package   mirasvit/extension_advr
 * @version   1.0.40
 * @copyright Copyright (C) 2018 Mirasvit (https://mirasvit.com/)
 */



class Mirasvit_Advr_Block_Adminhtml_Block_Grid_Column_Filter_Array extends Mage_Adminhtml_Block_Widget_Grid_Column_Filter_Abstract
{
    public function getCondition()
    {
        $value = $this->getValue();
        if (is_null($value)) {
            return null;
        }

        if (is_string($value)) {
            $value = explode(',', $value);
        }

        return array('in' => $value);
    }

    /**
     * Get filter HTML.
     *
     * @return string
     */
    public function getHtml()
    {
        $value = $this->getValue();
        if (is_array($value)) {
            $value = implode(',', $value);
        }

        $html = '<div class="field-100"><input type="text" name="'.$this->_getHtmlName().'" id="'.$this->_getHtmlId().'" value="'.$value.'" class="input-text no-changes"/></div>';

        return $html;
    }
}
