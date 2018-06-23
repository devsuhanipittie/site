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



class Mirasvit_Advr_Block_Adminhtml_Order_CreditcardType extends Mirasvit_Advr_Block_Adminhtml_Order_Abstract
{
    public function _prepareLayout()
    {
        parent::_prepareLayout();

        $this->setHeaderText(Mage::helper('advr')->__('Sales By Credit Card Type'));

        return $this;
    }

    protected function prepareChart()
    {
        $this->setChartType('pie');

        $this->initChart()
            ->setNameField('cc_type')
            ->setValueField('sum_grand_total');

        return $this;
    }

    protected function prepareGrid()
    {
        $this->initGrid()
            ->setDefaultSort('sum_grand_total')
            ->setDefaultDir('desc')
            ->setDefaultLimit(100)
            ->setPagerVisibility(false);

        return $this;
    }

    public function _prepareCollection()
    {
        $collection = Mage::getModel('advr/report_sales')
            ->setBaseTable('sales/order', true)
            ->setFilterData($this->getFilterData())
            ->selectColumns($this->getVisibleColumns())
            ->groupByColumn('cc_type');

        return $collection;
    }

    public function getColumns()
    {
        $columns = array(
            'cc_type' => array(
                'header'              => 'Credit Card Type',
                'type'                => 'text',
            ),
        );

        $columns += $this->getOrderTableColumns(true);

        return $columns;
    }
}
