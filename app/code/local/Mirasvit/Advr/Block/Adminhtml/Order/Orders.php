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



class Mirasvit_Advr_Block_Adminhtml_Order_Orders extends Mirasvit_Advr_Block_Adminhtml_Order_Abstract
{
    public function _prepareLayout()
    {
        parent::_prepareLayout();

        $this->setHeaderText(Mage::helper('advr')->__('Sales'));

        return $this;
    }

    protected function prepareChart()
    {
        $this->setChartType('column');

        $this->initChart()
            ->setXAxisType('datetime')
            ->setXAxisField($this->getPeriod());

        return $this;
    }

    protected function prepareGrid()
    {
        $this->initGrid()
            ->setDefaultSort($this->getPeriod())
            ->setDefaultDir('asc')
            ->setDefaultLimit(100000)
            ->setPagerVisibility(false);

        return $this;
    }

    protected function prepareToolbar()
    {
        $this->initToolbar()
            ->setRangesVisibility(true)
            ->setSalesSourceVisibility(true);

        return $this;
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('advr/report_sales')
            ->increaseGroupConcatMaxLen()
            ->setBaseTable($this->getBaseTable('sales/order'), true)
            ->setFilterData($this->getFilterData())
            ->selectColumns(array_merge($this->getVisibleColumns(), $this->getAdditionalColumns()))
            ->groupByColumn($this->getPeriod());

        return $collection;
    }

    public function getColumns()
    {
        $columns = array(
            'period' => array(
                'header' => 'Period',
                'type' => 'text',
                'frame_callback' => array(Mage::helper('advr/callback'), 'period'),
                'totals_label' => 'Total',
                'filter_totals_label' => 'Subtotal',
                'filter' => false,
            ),
        );

        $columns += $this->getOrderTableColumns(true);

        if ($this->isSalesSourceInvoice()) {
            $columns = $this->convertToInvoiceColumns($columns);
        }

        $columns['actions'] = array(
            'header' => 'Actions',
            'renderer' => 'Mirasvit_Advr_Block_Adminhtml_Block_Grid_Renderer_PostAction',
        );

        return $columns;
    }

    /**
     * Determine whether the source of sales is invoice or not.
     *
     * @return bool
     */
    private function isSalesSourceInvoice()
    {
        $salesSource = (int) $this->getFilterData()->getSalesSource();

        return $salesSource === Mirasvit_Advr_Model_System_Config_Source_SalesSource::SALES_SOURCE_INVOICE;
    }

    public function rowUrlCallback($row)
    {
        $row->setRange($this->getFilterData()->getRange());

        if ($this->isSalesSourceInvoice()) {
            $url = Mage::helper('advr/callback')->rowUrl('*/*/invoices', $row, array('invoices', 'invoice_period'));
        } else {
            $url = Mage::helper('advr/callback')->rowUrl('*/*/plain', $row, array('orders', 'period'));
        }

        return $url;
    }

    private function getAdditionalColumns()
    {
        $additionalColumns = array('orders');
        if ($this->isSalesSourceInvoice()) {
            $additionalColumns[] = 'invoices';
        }

        return $additionalColumns;
    }

    private function getPeriod()
    {
        return $this->isSalesSourceInvoice() ? 'invoice_period' : 'period';
    }
}
