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



class Mirasvit_Advr_Block_Adminhtml_Order_Coupon extends Mirasvit_Advr_Block_Adminhtml_Order_Abstract
{
    public function _prepareLayout()
    {
        parent::_prepareLayout();

        $this->setHeaderText(Mage::helper('advr')->__('Sales By Coupon'));

        return $this;
    }

    protected function prepareChart()
    {
        $this->setChartType('column');

        $this->initChart()
            ->setXAxisType('category')
            ->setXAxisField('coupon_code');

        return $this;
    }

    protected function prepareGrid()
    {
        $this->initGrid()
            ->setDefaultSort('hour_of_day')
            ->setDefaultDir('asc');

        return $this;
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('advr/report_sales')
            ->setBaseTable('sales/order', true)
            ->setFilterData($this->getFilterData())
            ->selectColumns(array_merge($this->getVisibleColumns(), array('orders')))
            ->groupByColumn('coupon_code');

        return $collection;
    }

    public function getColumns()
    {
        $columns = array(
            'coupon_code' => array(
                'header'       => 'Coupon Code',
                'type'         => 'text',
                'totals_label' => 'Total',
                'chart'        => true,
            ),
        );

        $columns += $this->getOrderTableColumns(true);

        $columns['actions'] = array(
            'header' => 'Actions',
            'renderer' => 'Mirasvit_Advr_Block_Adminhtml_Block_Grid_Renderer_PostAction',
        );

        return $columns;
    }
}
