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



class Mirasvit_Advr_Block_Adminhtml_Order_TaxRate extends Mirasvit_Advr_Block_Adminhtml_Order_Abstract
{
    public function _prepareLayout()
    {
        parent::_prepareLayout();

        $this->setHeaderText(Mage::helper('advr')->__('Sales By Tax Rates'));

        return $this;
    }

    protected function prepareChart()
    {
        $this->setChartType('column');

        $this->initChart()
            ->setXAxisType('category')
            ->setXAxisField('taxrate_tax_code');

        return $this;
    }

    protected function prepareGrid()
    {
        $this->initGrid()
            ->setDefaultSort('taxrate_tax_code');

        return $this;
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('advr/report_sales')
            ->setBaseTable('sales/order', true)
            ->setFilterData($this->getFilterData())
            ->selectColumns(array_merge($this->getVisibleColumns(), array('orders')))
            ->groupByColumn('taxrate_tax_code');

        //$collection->getSelect()->where('sales_order_item_table.parent_item_id IS NOT NULL OR sales_order_item_table.product_type="simple"');

        return $collection;
    }

    public function getColumns()
    {
        $columns = array(
            'taxrate_tax_code' => array(
                'header' => 'Tax Identifier',
                'type' => 'text',
            ),
            'taxrate_tax_title' => array(
                'header' => 'Tax Title',
                'type' => 'text',
                'hidden' => true,
            ),
            'taxrate_tax_percent' => array(
                'header' => 'Tax Rate',
                'type' => 'number',
                'chart' => true,
                'totals_label' => '',
            ),/*
            'quantity' => array(
                'header' => 'Number Of Orders',
                'type'   => 'number',
            ),
            'sum_item_qty_ordered' => array(
                'header' => 'Items Ordered',
                'type' => 'number',
            ),
            'sum_item_qty_refunded' => array(
                'header' => 'Items Refunded',
                'type' => 'number',
            ),
            'sum_item_amount_refunded' => array(
                'header' => 'Refunded',
                'type' => 'currency',
            ),
            'sum_item_tax_amount' => array(
                'header' => 'Tax',
                'type' => 'currency',
            ),
            'sum_item_discount_amount' => array(
                'header' => 'Discount',
                'type' => 'currency',
            ),
            'sum_item_row_invoiced' => array(
                'header' => 'Invoiced',
                'type' => 'currency',
            ),
            'sum_item_row_total' => array(
                'header' => 'Total',
                'type' => 'currency',
            ),*/
        );

        $columns += $this->getOrderTableColumns(false);

        $columns['actions'] = array(
            'header' => 'Actions',
            'renderer' => 'Mirasvit_Advr_Block_Adminhtml_Block_Grid_Renderer_PostAction',
        );

        return $columns;
    }

    public function rowUrlCallback($row)
    {
        $row->setRange($this->getFilterData()->getRange());

        return Mage::helper('advr/callback')->rowUrl('*/*/plain', $row, array('orders', 'period'));
    }
}
