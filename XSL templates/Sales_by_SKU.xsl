<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output  encoding="UTF-8" omit-xml-declaration="yes" indent="yes" method="html" media-type="text/html"/>

 <xsl:key name="kStmtByKeys" match="items/item"
      use="concat(generate-id(../../..), sku)"/>

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">
<xsl:variable name="report_range">
<h3><xsl:text>SKU/Product sales table.</xsl:text></h3><hr /><b style="color: #333333;
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

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>
      <xsl:text>SKU Report</xsl:text>
    </title>
    <script type="text/javascript" src="http://www.google.com/jsapi"><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type="text/javascript">
      <xsl:text>google.load('visualization', '1', {packages: ['controls','table','corechart']});</xsl:text>
    </script>
    <script type="text/javascript">
      <xsl:text>function drawVisualization() {
        // Prepare the data.
        var data = google.visualization.arrayToDataTable([</xsl:text>
		<xsl:text>['SKU', 'Product ID', 'Orders', 'QTY Ordered', 'Amount', 'Tax', 'Discount', 'Total', 'Invoiced','QTY Invoiced', 'Refunded','QTY Refunded']</xsl:text>
		<xsl:for-each select=
     "order/items/item[generate-id()
          =
           generate-id(key('kStmtByKeys',
                           concat(generate-id(../../..), sku)
                           )[1]
                       )
           ]
     ">
      <xsl:variable name="vkeyGroup" select=
       "key('kStmtByKeys', concat(generate-id(../../..), sku))"/>
	   <xsl:text>,['</xsl:text><xsl:value-of select="normalize-space(sku)" disable-output-escaping="yes"/><xsl:text>',</xsl:text><xsl:value-of select="normalize-space(product_id)" disable-output-escaping="yes"/><xsl:text>,</xsl:text><xsl:value-of select="count($vkeyGroup[not(parent_item_id)]/qty_ordered[.>0])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup[not(parent_item_id)]/qty_ordered)"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup/base_row_total[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup/base_tax_amount[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup/discount_amount[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup/base_row_total[format-number(number(),'#')!='NaN'])-sum($vkeyGroup/base_discount_amount[format-number(number(),'#')!='NaN'])+sum($vkeyGroup/base_tax_amount[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vkeyGroup/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vkeyGroup/base_tax_invoiced[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup[base_row_invoiced>base_discount_invoiced]/qty_invoiced[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup/refund_sum_for_xls[format-number(number(),'#')!='NaN'])"/><xsl:text>,</xsl:text><xsl:value-of select="sum($vkeyGroup[base_row_invoiced>base_discount_invoiced]/qty_refunded[format-number(number(),'#')!='NaN'])"/><xsl:text>]
	</xsl:text>

    </xsl:for-each>
<xsl:text> ]);

		 // Create and draw the visualization.
		  //var table = new google.visualization.Table(document.getElementById('visualization'));

		  var formatter = new google.visualization.NumberFormat(
			  {prefix: "</xsl:text><xsl:value-of select="$currentProductCurrency" disable-output-escaping="yes"/><xsl:text>", negativeColor: 'red', negativeParens: true});
		  formatter.format(data, 4); // Apply formatter to second column
		  formatter.format(data, 5); // Apply formatter to second column
		  formatter.format(data, 6); // Apply formatter to second column
		  formatter.format(data, 7); // Apply formatter to second column
		  formatter.format(data, 8); // Apply formatter to second column
		  formatter.format(data, 10); // Apply formatter to second column

		  //var formatter = new google.visualization.TableArrowFormat();
			//formatter.format(data, 4); // Apply formatter to second column

		  //table.draw(data, {allowHtml: true, showRowNumber: true});

        // Define a StringFilter control for the 'Name' column
        var stringFilter = new google.visualization.ControlWrapper({
          'controlType': 'StringFilter',
          'containerId': 'control1',
          'options': {
            'filterColumnLabel': 'SKU','ui': {'label': 'Filter table by SKU'},'matchType':'any'
          }
        });

        // Define a table visualization
        var table = new google.visualization.ChartWrapper({
          'chartType': 'Table',
          'containerId': 'chart1',
          'options': {'height': '40em', 'width': '75em'}

        });

        // Create the dashboard.
        var dashboard = new google.visualization.Dashboard(document.getElementById('dashboard')).
          // Configure the string filter to affect the table contents
          bind(stringFilter, table).
          // Draw the dashboard
          draw(data);
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