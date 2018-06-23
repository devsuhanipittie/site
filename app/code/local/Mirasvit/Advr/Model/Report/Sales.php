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



class Mirasvit_Advr_Model_Report_Sales extends Mirasvit_Advr_Model_Report_Abstract
{
    /**
     * @SuppressWarnings(PHPMD.ExcessiveMethodLength)
     */
    protected function _construct()
    {
        $this->_init('sales/order');

        $isRegisteredCustomer = 'sales_order_table.customer_id IS NOT NULL';

        $isNewCustomer = 'DATE_FORMAT(sales_order_table.created_at, "%Y-%m-%d")
            = DATE_FORMAT(customer_entity_table.created_at, "%Y-%m-%d") OR customer_entity_table.created_at IS NULL';

        $shippingTime = 'unix_timestamp(sales_shipment_table.created_at)
            - unix_timestamp(sales_order_table.created_at)';

        $this->relations = array(
            array(
                'sales/order',
                'sales/order_item',
                'sales_order_table.entity_id = sales_order_item_table.order_id',
            ),
            array(
                'sales/order',
                'customer/customer_group',
                'sales_order_table.customer_group_id = customer_customer_group_table.customer_group_id',
            ),
            array(
                'sales/order',
                'customer/entity',
                'sales_order_table.customer_id = customer_entity_table.entity_id',
            ),
            array(
                'sales/order',
                'sales/order_address',
                'sales_order_table.billing_address_id = sales_order_address_table.entity_id',
            ),
            array(
                'sales/order',
                'sales/order_payment',
                'sales_order_table.entity_id = sales_order_payment_table.parent_id',
            ),
            array(
                'sales/invoice',
                'sales/order_payment',
                'sales_invoice_table.order_id = sales_order_payment_table.parent_id',
            ),
            array(
                'advr/postcode',
                'sales/order_address',
                array(
                    'advr_postcode_table.postcode
                        = REPLACE(REPLACE(sales_order_address_table.postcode, " ", ""), "-","")',
                    'advr_postcode_table.country_id = sales_order_address_table.country_id',
                ),
            ),
            array(
                'sales/order_item',
                'catalog/product',
                array('sales_order_item_table.product_id = catalog_product_table.entity_id'),
                array($this, 'onJoinOrderItem'),
            ),
            array(
                'sales/order_item',
                'catalog/category_product',
                'sales_order_item_table.product_id = catalog_category_product_table.product_id',
            ),
            array(
                'catalog/category',
                'catalog/category_product',
                'catalog_category_product_table.category_id = catalog_category_table.entity_id',
            ),
            array(
                'sales/order',
                'sales/shipment',
                'sales_order_table.entity_id = sales_shipment_table.order_id',
            ),
            array(
                'catalog/product',
                'cataloginventory/stock_item',
                'catalog_product_table.entity_id = cataloginventory_stock_item_table.product_id',
            ),
            array(
                'sales/order',
                'sales/order_status',
                'sales_order_table.status = sales_order_status_table.status',
            ),
            array(
                'sales/order',
                'sales/invoice',
                'sales_order_table.entity_id = sales_invoice_table.order_id',
            ),
            array(
                'sales/order',
                'salesrule/rule',
                'FIND_IN_SET(salesrule_rule_table.rule_id, sales_order_table.applied_rule_ids)',
            ),/*
            array(
                'sales/order_item',
                'tax/sales_order_tax_item',
                'tax_sales_order_tax_item_table.item_id = sales_order_item_table.item_id',
            ),
            array(
                'tax/sales_order_tax_item',
                'sales/order_tax',
                'tax_sales_order_tax_item_table.tax_id = sales_order_tax_table.tax_id',
            ),*/
            array(
                'sales/order',
                'sales/order_tax',
                'sales_order_table.entity_id = sales_order_tax_table.order_id',
            ),
        );

        $this->addColumn(
            'order_status',
            array(
                'label' => 'Status',
                'type' => 'options',
                'options' => Mage::getSingleton('advr/system_config_source_status')->toOptionHash(),
                'expression' => 'sales_order_table.status',
                'table' => 'sales/order',
            )
        )->addColumn(
            'order_status_label',
            array(
                'label' => 'Status Label',
                'type' => 'options',
                'options' => Mage::getResourceModel('sales/order_status_collection')->toOptionHash(),
                'expression' => 'sales_order_status_table.label',
                'table' => 'sales/order_status',
            )
        )->addColumn(
            'quantity',
            array(
                'label' => 'Number of orders',
                'type' => 'number',
                'expression' => 'COUNT(DISTINCT(sales_order_table.entity_id))',
                'table' => 'sales/order',
            )
        )->addColumn(
            'quantity_refunded',
            array(
                'label' => 'Number of refunded orders',
                'type' => 'number',
                'expression' => 'SUM(IF(sales_order_table.base_total_refunded > 0, 1, 0))',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_total_qty_ordered',
            array(
                'label' => 'Total Qty Ordered',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.total_qty_ordered)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_discount_amount',
            array(
                'label' => 'Discount Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_discount_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_shipping_amount',
            array(
                'label' => 'Shipping Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_shipping_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_tax_amount',
            array(
                'label' => 'Tax Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_tax_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_total_refunded',
            array(
                'label' => 'Total Refunded',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_total_refunded)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_shipping_tax_amount',
            array(
                'label' => 'Shipping Tax Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_shipping_tax_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_total_invoiced',
            array(
                'label' => 'Total Invoiced',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_total_invoiced)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_total_invoiced_cost',
            array(
                'label' => 'Total Invoiced Cost',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_total_invoiced_cost)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_subtotal',
            array(
                'label' => 'Subtotal',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_subtotal)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_subtotal',
            array(
                'label' => 'Avg Subtotal',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_subtotal)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_grand_total',
            array(
                'label' => 'Grand Total',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_grand_total)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'sum_gross_profit',
            array(
                'label' => 'Gross Profit',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_table.base_subtotal_invoiced - sales_order_table.base_total_invoiced_cost)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_total_qty_ordered',
            array(
                'label' => 'Avg Total Qty Ordered',
                'type' => 'currency',
                'expression' => 'ROUND(AVG(sales_order_table.total_qty_ordered), 2)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_discount_amount',
            array(
                'label' => 'Avg Discount Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_discount_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_shipping_amount',
            array(
                'label' => 'Avg Shipping Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_shipping_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_tax_amount',
            array(
                'label' => 'Avg Tax Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_tax_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_total_refunded',
            array(
                'label' => 'Avg Total Refunded',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_total_refunded)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_shipping_tax_amount',
            array(
                'label' => 'Avg Shipping Tax Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_shipping_tax_amount)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_total_invoiced',
            array(
                'label' => 'Avg Total Invoiced',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_total_invoiced)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_total_invoiced_cost',
            array(
                'label' => 'Avg Total Invoiced Cost',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_total_invoiced_cost)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_gross_profit',
            array(
                'label' => 'Avg Gross Profit',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_subtotal_invoiced - order_table.base_total_invoiced_cost)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'avg_grand_total',
            array(
                'label' => 'Avg Grand Total',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_table.base_grand_total)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'invoice_quantity',
            array(
                'label' => 'Number of invoices',
                'type' => 'number',
                'expression' => 'COUNT(DISTINCT(sales_invoice_table.entity_id))',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_total_qty_ordered',
            array(
                'label' => 'Total Qty Invoiced',
                'type' => 'number',
                'expression' => 'SUM(sales_invoice_table.total_qty)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_discount_amount',
            array(
                'label' => 'Invoice Discount Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_discount_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_shipping_amount',
            array(
                'label' => 'Invoice Shipping Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_shipping_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_tax_amount',
            array(
                'label' => 'Invoice Tax Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_tax_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_total_refunded',
            array(
                'label' => 'Invoice Total Refunded',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_total_refunded)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_shipping_tax_amount',
            array(
                'label' => 'Invoice Shipping Tax Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_shipping_tax_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_total_invoiced_cost',
            array(
                'label' => 'Total Invoiced Cost',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_grand_total)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_subtotal',
            array(
                'label' => 'Invoice Subtotal',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_subtotal)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_grand_total',
            array(
                'label' => 'Invoice Grand Total',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_grand_total)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_sum_gross_profit',
            array(
                'label' => 'Invoice Gross Profit',
                'type' => 'currency',
                'expression' => 'SUM(sales_invoice_table.base_subtotal)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_total_qty_ordered',
            array(
                'label' => 'Avg Total Qty Invoiced',
                'type' => 'currency',
                'expression' => 'ROUND(AVG(sales_invoice_table.total_qty), 2)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_discount_amount',
            array(
                'label' => 'Invoice Avg Discount Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_discount_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_shipping_amount',
            array(
                'label' => 'Invoice Avg Shipping Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_shipping_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_tax_amount',
            array(
                'label' => 'Invoice Avg Tax Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_tax_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_total_refunded',
            array(
                'label' => 'Invoice Avg Total Refunded',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_total_refunded)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_shipping_tax_amount',
            array(
                'label' => 'Invoice Avg Shipping Tax Amount',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_shipping_tax_amount)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_total_invoiced_cost',
            array(
                'label' => 'Avg Total Invoiced Cost',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_grand_total)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'invoice_avg_grand_total',
            array(
                'label' => 'Invoice Avg Grand Total',
                'type' => 'currency',
                'expression' => 'AVG(sales_invoice_table.base_grand_total)',
                'table' => 'sales/invoice',
        ))->addColumn(
            'invoice_increment_id',
            array(
                'label' => 'Invoice #',
                'type' => 'text',
                'expression' => 'GROUP_CONCAT(sales_invoice_table.increment_id)',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'country_id',
            array(
                'label' => 'Country',
                'type' => 'options',
                'options' => Mage::getSingleton('advr/system_config_source_country')->toOptionHash(),
                'expression' => 'sales_order_address_table.country_id',
                'table' => 'sales/order_address',
            )
        )->addColumn(
            'state',
            array(
                'label' => 'State',
                'type' => 'text',
                'expression' => 'advr_postcode_table.state',
                'table' => 'advr/postcode',
            )
        )->addColumn(
            'province',
            array(
                'label' => 'Province',
                'type' => 'text',
                'expression' => 'advr_postcode_table.province',
                'table' => 'advr/postcode',
            )
        )->addColumn(
            'place',
            array(
                'label' => 'City / Place',
                'type' => 'text',
                'expression' => 'advr_postcode_table.place',
                'table' => 'advr/postcode',
            )
        )->addColumn(
            'lat',
            array(
                'label' => false,
                'expression' => 'advr_postcode_table.lat',
                'table' => 'advr/postcode',
            )
        )->addColumn(
            'lng',
            array(
                'label' => false,
                'expression' => 'advr_postcode_table.lng',
                'table' => 'advr/postcode',
            )
        )->addColumn(
            'postcode',
            array(
                'label' => 'Postcode',
                'type' => 'text',
                'expression' => 'advr_postcode_table.postcode',
                'table' => 'advr/postcode',
            )
        )->addColumn(
            'period',
            array(
                'label' => false,
                'expression_method' => 'getPeriodExpression',
                'table' => 'sales/order',
            )
        )->addColumn(
            'invoice_period',
            array(
                'label' => false,
                'expression_method' => 'getInvoicePeriodExpression',
                'table' => 'sales/invoice',
            )
        )->addColumn(
            'period_of_sale',
            array(
                'label' => false,
                'expression_method' => 'getSalePeriodExpression',
                'table' => 'sales/order',
            )
        )->addColumn(
            'hour_of_day',
            array(
                'label' => 'Hour of Day',
                'type' => 'text',
                'expression_method' => 'getHourOfDayExpression',
                'table' => 'sales/order',
            )
        )->addColumn(
            'day_of_week',
            array(
                'label' => 'Day of Week',
                'type' => 'text',
                'expression_method' => 'getDayOfWeekExpression',
                'table' => 'sales/order',
            )
        )->addColumn(
            'payment_method',
            array(
                'label' => 'Payment Method',
                'expression' => 'sales_order_payment_table.method',
                'table' => 'sales/order_payment',
                'type' => 'options',
                'options' => Mage::getSingleton('advr/system_config_source_paymentType')->toOptionHash(),
            )
        )->addColumn(
            'cc_type',
            array(
                'label' => 'Credit Card Type',
                'expression' => 'sales_order_payment_table.cc_type',
                'table' => 'sales/order_payment',
            )
        )->addColumn(
            'customer_group_id',
            array(
                'label' => 'Customer Group',
                'type' => 'options',
                'options' => Mage::getSingleton('advr/system_config_source_customerGroup')->toOptionHash(),
                'expression' => 'sales_order_table.customer_group_id',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_group_code',
            array(
                'label' => false,
                'expression' => 'customer_customer_group_table.customer_group_code',
                'table' => 'customer/customer_group',
            )
        )->addColumn(
            'coupon_code',
            array(
                'label' => 'Coupon Code',
                'type' => 'text',
                'expression' => 'sales_order_table.coupon_code',
                'table' => 'sales/order',
            )
        )->addColumn(
            'salesrule_rule_id',
            array(
                'label' => 'Rule Id',
                'expression' => 'salesrule_rule_table.rule_id',
                'table' => 'salesrule/rule',
            )
        )->addColumn(
            'salesrule_rule_name',
            array(
                'label' => 'Rule Title',
                'expression' => 'salesrule_rule_table.name',
                'table' => 'salesrule/rule',
            )
        )->addColumn(
            'taxrate_tax_code',
            array(
                'label' => 'Tax Identifier',
                'type' => 'text',
                'expression' => 'sales_order_tax_table.code',
                'table' => 'sales/order_tax',
            )
        )->addColumn(
            'taxrate_tax_title',
            array(
                'label' => 'Tax Title',
                'type' => 'text',
                'expression' => 'sales_order_tax_table.title',
                'table' => 'sales/order_tax',
            )
        )->addColumn(
            'taxrate_tax_percent',
            array(
                'label' => 'Tax Rate',
                'type' => 'number',
                'expression' => 'sales_order_tax_table.percent',
                'table' => 'sales/order_tax',
            )
        )->addColumn(
            'is_new_customer',
            array(
                'label' => false,
                'expression' => $isNewCustomer,
                'table' => 'customer/entity',
            )
        )->addColumn(
            'quantity_by_new_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isNewCustomer.', 1, 0))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'quantity_by_registered_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isRegisteredCustomer.', 1, 0))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'sum_grand_total_by_new_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isNewCustomer.', base_grand_total, 0))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'sum_grand_total_by_registered_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isRegisteredCustomer.', base_grand_total, 0))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'quantity_by_returning_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isNewCustomer.', 0, 1))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'quantity_by_unregistered_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isRegisteredCustomer.', 0, 1))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'sum_grand_total_by_returning_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isNewCustomer.', 0, base_grand_total))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'sum_grand_total_by_unregistered_customers',
            array(
                'label' => false,
                'expression' => 'SUM(IF('.$isRegisteredCustomer.', 0, base_grand_total))',
                'table' => 'customer/entity',
            )
        )->addColumn(
            'customer_email',
            array(
                'label' => 'Email',
                'expression' => 'sales_order_table.customer_email',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_id',
            array(
                'label' => false,
                'expression' => 'sales_order_table.customer_id',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_is_guest',
            array(
                'label' => false,
                'expression' => 'sales_order_table.customer_is_guest',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_name',
            array(
                'label' => 'Full Name',
                'expression' => 'CONCAT(
                    sales_order_table.customer_firstname,
                    " ",
                    sales_order_table.customer_lastname)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_firstname',
            array(
                'label' => 'First Name',
                'expression' => 'sales_order_table.customer_firstname',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_lastname',
            array(
                'label' => 'Last Name',
                'expression' => 'sales_order_table.customer_lastname',
                'table' => 'sales/order',
            )
        )->addColumn(
            'customer_company',
            array(
                'label' => 'Customer Company',
                'expression' => 'sales_order_address_table.company',
                'table' => 'sales/order_address',
            )
        )->addColumn(
            'category_id',
            array(
                'label' => 'Category Id',
                'type' => 'number',
                'expression' => 'catalog_category_table.entity_id',
                'table' => 'catalog/category',
            )
        )->addColumn(
            'category_level',
            array(
                'label' => false,
                'expression' => 'catalog_category_table.level',
                'table' => 'catalog/category',
                'type' => 'number',
            )
        )->addColumn(
            'category_name',
            array(
                'label' => 'Category Name',
                'expression' => 'catalog_category_name_table.value',
                'table_method' => 'joinCategoryName',
            )
        )->addColumn(
            'category_path',
            array(
                'label' => false,
                'expression' => 'catalog_category_table.path',
                'table' => 'catalog/category',
            )
        )->addColumn(
            'category_is_active',
            array(
                'label' => 'Category Is Active',
                'expression' => 'catalog_category_is_active_table.value',
                'table_method' => 'joinCategoryIsActive',
            )
        )->addColumn(
            'qty_distinct_products',
            array(
                'label' => 'Qty Distinct Products',
                'type' => 'number',
                'expression' => 'COUNT(DISTINCT(sales_order_item_table.product_id))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_qty_ordered',
            array(
                'label' => 'Qty Ordered',
                'type' => 'number',
                'expression' => 'SUM(sales_order_item_table.qty_ordered)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.qty_ordered,sales_order_item_table.qty_ordered))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_qty_refunded',
            array(
                'label' => 'Qty Refunded',
                'type' => 'number',
                'expression' => 'SUM(sales_order_item_table.qty_refunded)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.qty_refunded,sales_order_item_table.qty_refunded))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_amount_refunded',
            array(
                'label' => 'Amount Refunded',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.base_amount_refunded)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_amount_refunded,sales_order_item_table.base_amount_refunded))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_row_total',
            array(
                'label' => 'Row Total',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.base_row_total)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_row_total,sales_order_item_table.base_row_total))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_row_invoiced',
            array(
                'label' => 'Row Invoiced',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.base_row_invoiced)',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'avg_item_base_price',
            array(
                'label' => 'Price',
                'type' => 'currency',
                'expression' => 'AVG(sales_order_item_table.base_price)',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_tax_amount',
            array(
                'label' => 'Tax Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.base_tax_amount)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_tax_amount,sales_order_item_table.base_tax_amount))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'sum_item_discount_amount',
            array(
                'label' => 'Discount Amount',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.base_discount_amount)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_discount_amount,sales_order_item_table.base_discount_amount))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'avg_shipping_time',
            array(
                'label' => false,
                'expression' => "AVG($shippingTime)",
                'table' => 'sales/shipment',
            )
        )->addColumn(
            'quantity_shipping_time_0_1',
            array(
                'label' => false,
                'expression' => "SUM(IF($shippingTime <= 3600, 1, 0))",
                'table' => 'sales/shipment',
            )
        )->addColumn(
            'quantity_shipping_time_1_24',
            array(
                'label' => false,
                'expression' => "SUM(IF($shippingTime > 3600 AND $shippingTime <= 86400, 1, 0))",
                'table' => 'sales/shipment',
            )
        )->addColumn(
            'quantity_shipping_time_24_48',
            array(
                'label' => false,
                'expression' => "SUM(IF($shippingTime > 86400 AND $shippingTime <= 172800, 1, 0))",
                'table' => 'sales/shipment',
            )
        )->addColumn(
            'quantity_shipping_time_48_72',
            array(
                'label' => false,
                'expression' => "SUM(IF($shippingTime > 172800 AND $shippingTime <= 259200, 1, 0))",
                'table' => 'sales/shipment',
            )
        )->addColumn(
            'quantity_shipping_time_72_',
            array(
                'label' => false,
                'expression' => "SUM(IF($shippingTime > 259200, 1, 0))",
                'table' => 'sales/shipment',
            )
        )->addColumn(
            'product_sku',
            array(
                'label' => 'SKU',
                'type' => 'text',
                'expression' => 'catalog_product_table.sku',
                'table' => 'catalog/product',
            )
        )->addColumn(
            'product_id',
            array(
                'label' => 'ID',
                'type' => 'number',
                'expression' => 'catalog_product_table.entity_id',
                'table' => 'catalog/product',
            )
        )->addColumn(
            'product_name',
            array(
                'label' => 'Name',
                'type' => 'text',
                'expression' => 'catalog_product_name_table.value',
                'table_method' => 'joinProductAttribute',
                'table_args' => array(
                    'attribute' => 'name',
                ),
            )
        )->addColumn(
            'product_default_name',
            array(
                'label' => 'Product Name',
                'expression' => 'catalog_product_default_name_table.value',
                'table_method' => 'joinProductName',
            )
        )->addColumn(
            'product_attribute_set_id',
            array(
                'label' => 'Attribute Set',
                'type' => 'options',
                'expression' => 'catalog_product_table.attribute_set_id',
                'table' => 'catalog/product',
                'options' => $this->getAttributeSetOptions(),
            )
        )->addColumn(
            'product_stock_qty',
            array(
                'label' => 'Stock Qty',
                'type' => 'number',
                'expression' => 'cataloginventory_stock_item_table.qty',
                'table' => 'cataloginventory/stock_item',
            )
        )->addColumn(
            'product_is_in_stock',
            array(
                'label' => 'Stock Availability',
                'type' => 'number',
                'expression' => 'cataloginventory_stock_item_table.is_in_stock',
                'table' => 'cataloginventory/stock_item',
            )
        )->addColumn(
            'item_gross_profit_percent',
            array(
                'label' => 'Gross Profit',
                'type' => 'currency',
                // getExpression() needs external brackets
                'expression' => '(SUM(sales_order_item_table.base_row_total - sales_order_item_table.qty_ordered * IFNULL(sales_order_item_table.base_cost,0))/SUM(sales_order_item_table.base_row_total))',
                'expression_child' => '(SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_row_total,sales_order_item_table.base_row_total) - IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.qty_ordered,sales_order_item_table.qty_ordered) * IFNULL(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_cost,sales_order_item_table.base_cost),0))/SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_row_total,sales_order_item_table.base_row_total)))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'item_gross_profit',
            array(
                'label' => 'Gross Profit',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.base_row_total - sales_order_item_table.qty_ordered * IFNULL(sales_order_item_table.base_cost,0))',
                'expression_child' => '(SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_row_total,sales_order_item_table.base_row_total) - IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.qty_ordered,sales_order_item_table.qty_ordered) * IFNULL(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_cost,sales_order_item_table.base_cost),0)))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'item_cost',
            array(
                'label' => 'Cost',
                'type' => 'currency',
                'expression' => 'SUM(sales_order_item_table.qty_ordered * sales_order_item_table.base_cost)',
                'expression_child' => 'SUM(IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.qty_ordered,sales_order_item_table.qty_ordered) * IF(sales_order_item_table.product_type = "bundle",sales_order_item_parent_table.base_cost,sales_order_item_table.base_cost))',
                'table' => 'sales/order_item',
            )
        )->addColumn(
            'shipping_method',
            array(
                'label' => 'Shipping Method',
                'expression' => 'sales_order_table.shipping_method',
                'table' => 'sales/order',
            )
        )->addColumn(
            'created_at',
            array(
                'label' => 'Created At',
                'expression' => 'catalog_product_table.created_at',
                'table' => 'catalog/product',
                'type' => 'datetime',
            )
        )->addColumn(
            'updated_at',
            array(
                'label' => 'Updated At',
                'expression' => 'catalog_product_table.updated_at',
                'table' => 'catalog/product',
                'type' => 'datetime',
            )
        )->addColumn(
            'qty_of_unique_register_customers',
            array(
                'label' => 'Qty of Unique Registered Customers',
                'type' => 'number',
                'expression' => 'COUNT(DISTINCT(sales_order_table.customer_id))',
                'table' => 'sales/order',
            )
        )->addColumn(
            'order_emails',
            array(
                'label' => false,
                'expression' => 'CONCAT_WS(":",
                        GROUP_CONCAT(sales_order_table.customer_is_guest SEPARATOR "^"),
                        GROUP_CONCAT(sales_order_table.customer_email SEPARATOR "^")
                    )',
                'table' => 'sales/order',
            )
        )->addColumn(
            'orders',
            array(
                'label' => false,
                'expression' => 'GROUP_CONCAT(sales_order_table.entity_id)',
                'table' => 'sales/order',
            )
        )->addColumn(
            'invoices',
            array(
                'label' => false,
                'expression' => 'GROUP_CONCAT(sales_invoice_table.entity_id)',
                'table' => 'sales/invoice',
            )
        );

        $attributes = Mage::getSingleton('advr/system_config_source_productAttribute')->toOptionHash();

        foreach ($attributes as $attrCode => $attrLabel) {
            if ($attrCode === 'sku') {
                continue;
            }

            $options = Mage::helper('advr')->getAttributeOptionHash($attrCode);

            $type = 'text';
            if ($options) {
                $type = 'options';
            }

            $this->addColumn(
                'product_attribute_'.$attrCode,
                array(
                    'label' => $attrLabel,
                    'type' => $type,
                    'options' => $options,
                    'expression' => $this->prepareExpression('catalog_product_'.$attrCode.'_table.value'),
                    'table' => 'catalog/product',
                    'table_method' => 'joinProductAttribute',
                    'table_args' => array(
                        'attribute' => $attrCode,
                    ),
                )
            );
        }
    }

    public function getAttributeSetOptions()
    {
        $options = Mage::getModel('eav/entity_attribute_set')->getCollection()
            ->setEntityTypeFilter(Mage::getModel('catalog/product')->getResource()->getTypeId())
            ->toOptionHash();

        return $options;
    }

    public function getPeriodExpression()
    {
        return $this->_getRangeExpressionForAttribute(
            $this->getFilterData()->getRange(),
            $this->getTZDate('sales_order_table.created_at', true)
        );
    }

    public function getInvoicePeriodExpression()
    {
        return $this->_getRangeExpressionForAttribute(
            $this->getFilterData()->getRange(),
            $this->getTZDate('sales_invoice_table.created_at')
        );
    }

    public function getSalePeriodExpression()
    {
        return $this->_getRangeExpressionForAttribute(
            $this->getFilterData()->getRange(),
            $this->getTZDate('sales_order_table.created_at')
        );
    }

    public function getHourOfDayExpression()
    {
        return 'HOUR('.$this->getTZDate('sales_order_table.created_at', true).')';
    }

    public function getDayOfWeekExpression()
    {
        if (Mage::getStoreConfig('general/locale/firstday') === '0') {
            return new Zend_Db_Expr('DAYOFWEEK('.$this->getTZDate('sales_order_table.created_at', true).')');
        }

        return new Zend_Db_Expr('WEEKDAY('.$this->getTZDate('sales_order_table.created_at', true).')');
    }

    public function joinProductName()
    {
        $tableName = 'catalog_product_default_name_table';

        if (isset($this->joinedTables[$tableName])) {
            return $this;
        }

        $this->joinRelatedDependencies('catalog/product');
        $product = Mage::getResourceSingleton('catalog/product');
        $attr = $product->getAttribute('name');
        $conditons = array(
            $tableName.'.entity_id = catalog_product_table.entity_id',
            $tableName.'.entity_type_id = '.$product->getTypeId(),
            $tableName.'.attribute_id = '.$attr->getAttributeId(),
            $tableName.'.store_id = 0',
        );

        $this->getSelect()->joinLeft(
            array($tableName => $attr->getBackend()->getTable()),
            implode(' AND ', $conditons),
            array()
        );
        $this->joinedTables[$tableName] = true;

        return $this;
    }

    public function joinCategoryName()
    {
        $tableName = 'catalog_category_name_table';

        if (isset($this->joinedTables[$tableName])) {
            return $this;
        }

        $this->joinRelatedDependencies('catalog/category');
        $category = Mage::getResourceSingleton('catalog/category');
        $attr = $category->getAttribute('name');
        $conditons = array(
            $tableName.'.entity_id = catalog_category_table.entity_id',
            $tableName.'.entity_type_id = '.$category->getTypeId(),
            $tableName.'.attribute_id = '.$attr->getAttributeId(),
            $tableName.'.store_id = 0',
        );

        $this->getSelect()->joinLeft(
            array($tableName => $attr->getBackend()->getTable()),
            implode(' AND ', $conditons),
            array()
        );
        $this->joinedTables[$tableName] = true;

        return $this;
    }

    public function joinCategoryIsActive()
    {
        $tableName = 'catalog_category_is_active_table';

        if (isset($this->joinedTables[$tableName])) {
            return $this;
        }

        $this->joinRelatedDependencies('catalog/category');
        $category = Mage::getResourceSingleton('catalog/category');
        $attr = $category->getAttribute('is_active');
        $conditons = array(
            $tableName.'.entity_id = catalog_category_table.entity_id',
            $tableName.'.entity_type_id = '.$category->getTypeId(),
            $tableName.'.attribute_id = '.$attr->getAttributeId(),
            $tableName.'.store_id = 0',
        );

        $this->getSelect()->joinLeft(
            array($tableName => $attr->getBackend()->getTable()),
            implode(' AND ', $conditons),
            array()
        );
        $this->joinedTables[$tableName] = true;

        return $this;
    }

    public function joinProductAttribute($args)
    {
        $attrCode  = $args['attribute'];
        $tableName = $this->prepareExpression('catalog_product_'.$attrCode.'_table');

        if (!isset($this->joinedTables[$tableName])) {
            $this->joinRelatedDependencies('sales/order_item');

            $product = Mage::getResourceSingleton('catalog/product');
            $attr = Mage::getSingleton('eav/config')->getAttribute($product->getTypeId(), $attrCode);

            $conditions = array();
            if ($this->getFilterData()->getIncludeChild()) {
                $conditions[] = $tableName.'.entity_id = sales_order_item_parent_table.product_id';
            } else {
                $conditions[] = $tableName.'.entity_id = sales_order_item_table.product_id';
            }

            $conditions[] = $tableName.'.attribute_id = '.$attr->getAttributeId();
            $conditions[] = $tableName.'.entity_type_id = '.$product->getTypeId();
            $conditions[] = $tableName.'.store_id = 0';

            $this->getSelect()->joinLeft(
                array($tableName => $attr->getBackend()->getTable()),
                implode(' AND ', $conditions),
                array()
            );
        }

        $this->joinedTables[$tableName] = true;

        return $this;
    }

    public function onJoinOrderItem($conditions)
    {
        if ($this->getFilterData()->getIncludeChild()) {
            $this->getSelect()
                ->joinLeft(
                    array('sales_order_item_parent_table' => $this->getTable('sales/order_item')),
                    'sales_order_item_parent_table.product_id = catalog_product_table.entity_id
                        AND (sales_order_item_parent_table.parent_item_id IS NOT NULL
                            OR sales_order_item_parent_table.product_type IN ("simple", "virtual", "downloadable") )',
                    array()
                );

            $conditions = array();
            $conditions[] = 'sales_order_item_table.item_id =
                IFNULL(sales_order_item_parent_table.parent_item_id, sales_order_item_parent_table.item_id)';
        } else {
            $conditions[] = 'sales_order_item_table.parent_item_id IS NULL';
        }

        return $conditions;
    }

    public function joinView($data)
    {
        $this->filterData = $data;

        $tableName = 'reports_viewed_product_index_table';
        if (!isset($this->joinedTables[$tableName])) {

            $expr = '(SELECT product_id, COUNT(DISTINCT(visitor_id)) as qtyVisited, COUNT(DISTINCT(customer_id)) as qtyCustomerVisited'
                . ' FROM '.$this->getTable('reports/viewed_product_index');

            if ($this->filterData->getFrom() || $this->filterData->getTo()) {
                $expr .= " WHERE ";
                if ($this->filterData->getFrom()) {
                    $expr .= " added_at >= '" .$this->filterData->getFrom()."'";;
                    $from = true;
                }

                if ($this->filterData->getTo()) {
                    if ($from) {
                        $expr .= " AND ";
                    }
                    $expr .= " added_at < '" .$this->filterData->getTo()."'";;
                }

                $expr .= " GROUP BY product_id)";
            }

            $this->getSelect()->joinLeft(
                array(
                    $tableName => new Zend_Db_Expr($expr),
                ),
                $tableName.'.product_id = catalog_product_table.entity_id',
                array('reports_viewed_product_index_table.qtyVisited',
                    'reports_viewed_product_index_table.qtyCustomerVisited',
                    'cr' =>'ROUND(COUNT(DISTINCT(sales_order_table.entity_id)) / (reports_viewed_product_index_table.qtyVisited + reports_viewed_product_index_table.qtyCustomerVisited) * 100)'
                )
            );

            $this->joinedTables[$tableName] = true;
        }

        return $this;
    }

    public function setFilterData($data, $filterByStatus = true, $timeOfGroup = true, $joinSalesOrder = true, $checkDateForTZ = false)
    {
        parent::setFilterData($data);

        $this->filterData = $data;

        $conditions = array();

        if ($this->filterData->getFrom()) {
            if ($checkDateForTZ) {
                $conditions[] =
                    $this->getTZDate(
                        'sales_order_table.created_at',
                        $timeOfGroup,
                        $this->filterData->getFrom(),
                        $this->filterData->getTo()
                    )
                    ." >= '"
                    .$this->filterData->getFrom()."'";
            } else {
                $conditions[] = $this->getTZDate('sales_order_table.created_at', $timeOfGroup)
                    ." >= '"
                    .$this->filterData->getFrom()."'";
            }
        }

        if ($this->filterData->getTo()) {
            if ($checkDateForTZ) {
                $conditions[] =
                    $this->getTZDate(
                        'sales_order_table.created_at',
                        $timeOfGroup,
                        $this->filterData->getFrom(),
                        $this->filterData->getTo()
                    )
                    ." < '"
                    .$this->filterData->getTo()."'";
            } else {
                $conditions[] = $this->getTZDate('sales_order_table.created_at', $timeOfGroup)
                    ." < '"
                    .$this->filterData->getTo()."'";
            }
        }

        if (count($this->filterData->getStoreIds())) {
            $conditions[] = 'sales_order_table.store_id IN('.implode(',', $this->filterData->getStoreIds()).')';
        }

        if ($filterByStatus) {
            $statuses = Mage::getSingleton('advr/config')->getProcessOrderStatuses();
            foreach ($statuses as $idx => $status) {
                $statuses[$idx] = "'$status'";
            }

            $conditions[] = '(sales_order_table.status IN('.implode(',', $statuses).')
                OR sales_order_table.status IS NULL)';
        }

        if($this->filterData->getRemoteIp()){
            switch ($this->filterData->getRemoteIp()) {
                case 1:
                    $conditions[] = ' (sales_order_table.remote_ip IS NULL) ';
                    break;
                case 2;
                    $conditions[] = ' (sales_order_table.remote_ip IS NOT NULL) ';
                    break;
            }
        }

        if ($joinSalesOrder) {
            $this->joinRelatedDependencies('sales/order');
        }

        foreach ($conditions as $condition) {
            $this->getSelect()->where($condition);
        }

        foreach (array_keys($data->getData()) as $column) {
            if (isset($this->columns[$column])) {
                $this->selectColumns($column);
                $cond = $this->columns[$column]->getFilter()->getCondition();
                $this->addFieldToFilter($column, $cond);
            }
        }

        return $this;
    }
}
