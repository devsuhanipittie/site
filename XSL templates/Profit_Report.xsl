<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
         xmlns:exsl="http://exslt.org/common"
        exclude-result-prefixes="exsl">
 <xsl:output  encoding="UTF-8" omit-xml-declaration="yes" indent="yes" method="html" media-type="text/html"/>


<xsl:key name="kStmtByKeys" match="order"
      use="concat(generate-id(..), fields/increment_id)"/>



 <xsl:key name="kStmtByKeys" match="items/item"
      use="concat(generate-id(../../..), sku)"/>

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">
<xsl:variable name="report_range">
<h3><xsl:text>Profit report per order.</xsl:text></h3><hr /><b style="color: #333333;
    font:normal Tahoma,sans-serif,Verdana;">
<xsl:if test="/orders/@date_from or /orders/@date_to">
<xsl:text>Report range:  </xsl:text> 
<xsl:if test="/orders/@date_from">
<xsl:text> from : </xsl:text><xsl:value-of select="/orders/@date_from" disable-output-escaping="yes"/>
</xsl:if>
<xsl:if test="/orders/@date_to">
<xsl:text> to : </xsl:text><xsl:value-of select="/orders/@date_to" disable-output-escaping="yes"/>
</xsl:if>
</xsl:if>
<xsl:if test="not(/orders/@date_from) and not(/orders/@date_to)">
<xsl:text>Report range: all time</xsl:text>
</xsl:if>
</b>
</xsl:variable>

<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
<xsl:variable name="double_quote"><xsl:text>`</xsl:text></xsl:variable>



<xsl:variable name="currentProductCurrency">
<xsl:if test="normalize-space(order[1]/fields/order_currency_code)='USD'">
<xsl:text><![CDATA[$]]></xsl:text>
</xsl:if>
<xsl:if test="normalize-space(order[1]/fields/order_currency_code)='GBP'">
<xsl:text disable-output-escaping="no"><![CDATA[\xA3]]></xsl:text>
</xsl:if>
<xsl:if test="normalize-space(order[1]/fields/order_currency_code)='EUR'">
<xsl:text disable-output-escaping="no"><![CDATA[\u20AC]]></xsl:text>
</xsl:if>
<xsl:if test="not(normalize-space(order[1]/fields/order_currency_code)='EUR') and not(normalize-space(order[1]/fields/order_currency_code)='USD') and not(normalize-space(order[1]/fields/order_currency_code)='GBP')">
<xsl:value-of select="fields/order_currency_code" />
</xsl:if>
</xsl:variable>


<xsl:variable name="orderList">
    <xsl:for-each select=
     "order[generate-id()
          =
           generate-id(key('kStmtByKeys',
                           concat(generate-id(..), fields/increment_id)
                           )[1]
                       )
           ]
     ">
        <xsl:variable name="vkeyGroup" select=
        "key('kStmtByKeys', concat(generate-id(..), fields/increment_id))"/>
<xsl:if test="$vkeyGroup/fields/base_total_invoiced > 0">
        <order>
            <fields>
                <increment_id><xsl:value-of select="$vkeyGroup/fields/increment_id" /></increment_id>
                <base_discount><xsl:value-of select="normalize-space($vkeyGroup/fields/base_discount_invoiced)" /></base_discount>
                <base_discount_invoiced><xsl:value-of select="normalize-space($vkeyGroup/fields/base_discount_invoiced)"/></base_discount_invoiced>
                <base_tax_invoiced><xsl:value-of select="normalize-space($vkeyGroup/fields/base_tax_invoiced)" disable-output-escaping="yes"/></base_tax_invoiced>
                <base_total_invoiced_cost>0<xsl:value-of select="normalize-space($vkeyGroup/fields/base_total_invoiced_cost[format-number(number(),'#')!='NaN'])" disable-output-escaping="yes"/></base_total_invoiced_cost>
                <base_total_invoiced><xsl:value-of select="normalize-space($vkeyGroup/fields/base_total_invoiced)" disable-output-escaping="yes"/></base_total_invoiced>
                <base_shipping_invoiced>0<xsl:value-of select="normalize-space($vkeyGroup/fields/base_shipping_invoiced)" disable-output-escaping="yes"/></base_shipping_invoiced>
                <base_subtotal_invoiced><xsl:value-of select="normalize-space($vkeyGroup/fields/base_subtotal_invoiced[format-number(number(),'#')!='NaN'])" disable-output-escaping="yes"/></base_subtotal_invoiced>
                <base_subtotal_canceled>0<xsl:value-of select="normalize-space($vkeyGroup/fields/base_subtotal_canceled[format-number(number(),'#')!='NaN'])" disable-output-escaping="yes"/></base_subtotal_canceled>

            </fields>
            <items>
            <xsl:for-each select="$vkeyGroup/items/item">
                <item>
                    <sku><xsl:value-of select="base_sku" disable-output-escaping="yes"/></sku>
                    <name><xsl:value-of select="name" disable-output-escaping="yes"/></name>

                    <qty_invoiced><xsl:value-of select="qty_invoiced" disable-output-escaping="yes"/></qty_invoiced>

                    <xsl:if test="product_type = 'configurable'">
                        <base_cost>0</base_cost>
                        <base_cost_amount>0</base_cost_amount>
                    </xsl:if>
                    <xsl:if test="not(product_type = 'configurable')">
                        <base_cost>0<xsl:value-of select="base_cost" disable-output-escaping="yes"/></base_cost>
                        <base_cost_amount><xsl:value-of select="base_cost * qty_invoiced" disable-output-escaping="yes"/></base_cost_amount>
                    </xsl:if>
                    <base_price><xsl:value-of select="base_price" disable-output-escaping="yes"/></base_price>
                    <base_price_amount><xsl:value-of select="base_price * qty_invoiced" disable-output-escaping="yes"/></base_price_amount>
                    <base_discount_amount><xsl:value-of select="base_discount_amount" disable-output-escaping="yes"/></base_discount_amount>
                    <base_row_total><xsl:value-of select="base_row_total" disable-output-escaping="yes"/></base_row_total>
                    <base_tax_invoiced><xsl:value-of select="base_tax_invoiced" disable-output-escaping="yes"/></base_tax_invoiced>
                </item>
            </xsl:for-each>
            </items>
        </order>
        </xsl:if>
    </xsl:for-each>
</xsl:variable>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>
      <xsl:text>Profit Report</xsl:text>
    </title>
    <script type="text/javascript" src="http://www.google.com/jsapi"><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type="text/javascript">
      <xsl:text>google.load('visualization', '1', {packages: ['controls','table','corechart']});</xsl:text>
    </script>
    <script type="text/javascript">
      <xsl:text>function drawVisualization() {
        // Prepare the data.
        //var data = google.visualization.arrayToDataTable([
        var dataTable = new google.visualization.DataTable();        
        </xsl:text>    
        
        <xsl:text>
        dataTable.addColumn('number', 'Order ID');
        dataTable.addColumn('number', 'Cost amount');
        dataTable.addColumn('string', 'Cost description');
        dataTable.addColumn('number', 'Items amount');
        dataTable.addColumn('number', 'Discount for items');
        dataTable.addColumn('number', 'Total discount');
        dataTable.addColumn('number', 'Tax amount');
        dataTable.addColumn('number', 'Shipment amount');
        dataTable.addColumn('number', 'Total amount');
        dataTable.addColumn('number', 'Profit');
        dataTable.addRows([</xsl:text>
        <xsl:for-each select="exsl:node-set($orderList)/order">
<!--        <xsl:copy-of select="current()"/>-->
        <xsl:if test="position()&gt;1"><xsl:text>,</xsl:text></xsl:if>
       <xsl:text>[</xsl:text>
       <xsl:value-of select="normalize-space(fields/increment_id)" disable-output-escaping="yes"/><xsl:text>,</xsl:text>
       <xsl:value-of select="sum(items/item/base_cost_amount[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text>
        <xsl:text>'</xsl:text>
        <xsl:for-each select="items/item[base_cost>0]"><xsl:value-of select="normalize-space(translate(sku,$apos,$double_quote))" disable-output-escaping="yes"/><xsl:text> : </xsl:text><xsl:value-of select="format-number(normalize-space(base_cost),'#.00')" disable-output-escaping="yes"/><xsl:text> x </xsl:text><xsl:value-of select="format-number(normalize-space(qty_invoiced),'#')" disable-output-escaping="yes"/><xsl:text>&lt;br /&gt;\u000A</xsl:text></xsl:for-each>
        <xsl:text>',</xsl:text>
       <xsl:value-of select="sum(items/item/base_price_amount)"/><xsl:text>,</xsl:text>
       <xsl:value-of select="sum(items/item/base_discount_amount)"/><xsl:text>,</xsl:text>
       <xsl:value-of select="format-number(-fields/base_discount_invoiced,'#.00')"/><xsl:text>,</xsl:text>
       <xsl:value-of select="format-number(fields/base_tax_invoiced,'#.00')"/><xsl:text>,</xsl:text>
       <xsl:value-of select="format-number(fields/base_shipping_invoiced,'#.00')"/><xsl:text>,</xsl:text>
       <xsl:value-of select="sum(items/item/base_row_total[format-number(number(),'#')!='NaN'])-sum(items/item/base_discount_amount[format-number(number(),'#')!='NaN'])+sum(items/item/base_tax_amount[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text>
<!--
       <xsl:text>{v:'</xsl:text><xsl:value-of select="sum(items/item/base_row_total[format-number(number(),'#')!='NaN'])-sum(items/item/base_discount_amount[format-number(number(),'#')!='NaN']) - fields/base_total_invoiced_cost[format-number(number(),'#')!='NaN'] - fields/base_subtotal_canceled[format-number(number(),'#')!='NaN']"/>
       <xsl:text>',f:'</xsl:text><xsl:value-of select="sum(items/item/base_row_total[format-number(number(),'#')!='NaN'])"/><xsl:text>-</xsl:text><xsl:value-of select="sum(items/item/base_discount_amount[format-number(number(),'#')!='NaN'])"/><xsl:text>-</xsl:text><xsl:value-of select="fields/base_total_invoiced_cost[format-number(number(),'#')!='NaN']"/><xsl:text>-</xsl:text><xsl:value-of select="fields/base_subtotal_canceled[format-number(number(),'#')!='NaN']"/><xsl:text>'}</xsl:text>
-->
       <xsl:value-of select="sum(items/item/base_row_total[format-number(number(),'#')!='NaN'])-sum(items/item/base_discount_amount[format-number(number(),'#')!='NaN']) - sum(items/item/base_cost_amount[format-number(number(),'#')!='NaN']) - fields/base_subtotal_canceled[format-number(number(),'#')!='NaN']"/>
       <xsl:text>]
    </xsl:text>
       
    </xsl:for-each>
<xsl:text> ]);

          var formatter = new google.visualization.NumberFormat(
              {prefix: "</xsl:text><xsl:value-of select="$currentProductCurrency" disable-output-escaping="yes"/><xsl:text>", negativeColor: 'red', negativeParens: true});
          formatter.format(dataTable, 1); // Apply formatter to second column
          formatter.format(dataTable, 2); // Apply formatter to second column
          formatter.format(dataTable, 3); // Apply formatter to second column
          formatter.format(dataTable, 4); // Apply formatter to second column
          formatter.format(dataTable, 5); // Apply formatter to second column
          formatter.format(dataTable, 6); // Apply formatter to second column
          formatter.format(dataTable, 7); // Apply formatter to second column
          formatter.format(dataTable, 8); // Apply formatter to second column
          formatter.format(dataTable, 9); // Apply formatter to second column
          
          //var formatter = new google.visualization.TableArrowFormat();
            //formatter.format(data, 4); // Apply formatter to second column

//          dataTable.draw(dataTable, {allowHtml: true, showRowNumber: true});
      
        // Define a StringFilter control for the 'Name' column
         var options = {
    allowHtml: true
  };
        
        var stringFilter = new google.visualization.ControlWrapper({
          'controlType': 'StringFilter',
          'containerId': 'control1',
          'options': {
            'filterColumnLabel': 'Cost description','ui': {'label': 'Filter table by SKU'},'matchType':'any'
          }
        });
      
        // Define a table visualization
        var table = new google.visualization.ChartWrapper({
          'chartType': 'Table',
          'containerId': 'chart1',
          
          'options': {'allowHtml': true, 'height': '40em', 'width': '75em'}
          
        });
        //var table = new google.visualization.Table(document.getElementById('chart1'));
        //table.draw(dataTable, {showRowNumber: false, allowHtml: true});
      
        // Create the dashboard.
        var dashboard = new google.visualization.Dashboard(document.getElementById('dashboard')).
          // Configure the string filter to affect the table contents
          bind(stringFilter, table).
          // Draw the dashboard
          draw(dataTable, {allowHtml: true})
          }
      

      google.setOnLoadCallback(drawVisualization);
</xsl:text>
    </script>
  </head>
<body style="font-family: Arial;border: 0 none;">
  <xsl:copy-of select="$report_range"/>
    <div id="dashboard">
      <table>
        <tr style='vertical-align: top'>
          <td style='width: 800px; font-size: 0.9em;'>
            <div id="control1"><xsl:text><![CDATA[ ]]></xsl:text></div>
            <div id="control2"><xsl:text><![CDATA[ ]]></xsl:text></div>
            <div id="control3"><xsl:text><![CDATA[ ]]></xsl:text></div>
          </td>
         </tr>
         <tr>
          <td style='width: 800px'>
            <div style="float: left;" id="chart1"><xsl:text><![CDATA[ ]]></xsl:text></div>
            <div style="float: left;" id="chart2"><xsl:text><![CDATA[ ]]></xsl:text></div>
            <div style="float: left;" id="chart3"><xsl:text><![CDATA[ ]]></xsl:text></div>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>