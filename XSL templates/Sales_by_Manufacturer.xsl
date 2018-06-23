<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:exsl="http://exslt.org/common"
 exclude-result-prefixes="exsl">
 <xsl:output omit-xml-declaration="yes" indent="no" method="html"/>

 
<!-- Define Key splits order items by SKU-->
 <xsl:key name="kGlobalByKeys" match="items/item"
      use="generate-id(../../..)"/>

 
 <!-- Define Key splits order items by SKU-->
 <xsl:key name="kManufacturerByKeys" match="items/item"
      use="concat(generate-id(../../..), manufacturer)"/>

	  <!-- Define Key splits order items by SKU-->
 <xsl:key name="kProductSkuByKeys" match="items/item"
      use="concat(generate-id(../../..),product_id,'+',sku)"/>
 

<!-- Define Key splits order items by product_id and Year-Month date-->
<xsl:key name="kManufacturerDateByKeys" match="items/item"
      use="concat(generate-id(../../..), manufacturer,'+',substring(normalize-space(created_at),1,7))"/>


<!-- Define Key splits order items by Year-Month date-->
<xsl:key name="kDateByKeys" match="items/item"
      use="concat(generate-id(../../..), substring(normalize-space(created_at),1,7))"/>

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">
<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
<xsl:variable name="double_quote"><xsl:text>`</xsl:text></xsl:variable>

<xsl:variable name="report_range">
<h3><xsl:text>Manufacturer monthly sales chart.</xsl:text></h3><hr /><b style="color: #333333;
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

<!--collect datelist-->
<xsl:variable name="unsorted_dates">
<xsl:for-each select=
     "order/items/item[generate-id()
          =
           generate-id(key('kDateByKeys',
                           concat(generate-id(../../..), substring(normalize-space(created_at),1,7))
                           )[1]
                       )
           ]
     ">
	<date><xsl:value-of select="substring(normalize-space(created_at),1,7)" disable-output-escaping="yes"/></date>
</xsl:for-each>
</xsl:variable>




<xsl:variable name="raw_manufacturer_date">
<!--Skip for configurable simples-->
<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kManufacturerDateByKeys',concat(generate-id(../../..), manufacturer,'+',substring(normalize-space(created_at),1,7)))[1])]">
<xsl:variable name="vmanufacturerdatekeyGroup" select=
       "key('kManufacturerDateByKeys', concat(generate-id(../../..), manufacturer,'+',substring(normalize-space(created_at),1,7)))"/>

<manufacturer date="{substring(normalize-space(created_at),1,7)}" manufacturer="{normalize-space(manufacturer)}" invoiced_amount="{sum($vmanufacturerdatekeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vmanufacturerdatekeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vmanufacturerdatekeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])}"/>
</xsl:for-each>
</xsl:variable>









<!--Collect product list-->
<xsl:variable name="unsorted_manufacturers">
<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kManufacturerByKeys',concat(generate-id(../../..), manufacturer))[1])]">
<xsl:variable name="vkeyGroup" select=
       "key('kManufacturerByKeys', concat(generate-id(../../..), manufacturer))"/>
<!--<text/>
	   <xsl:if test="sum($vkeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vkeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vkeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])>0">
-->	   <manufacturer id="{manufacturer}" amount="{sum($vkeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vkeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vkeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])}">

</manufacturer>
<!--</xsl:if>-->
</xsl:for-each>
</xsl:variable>
<!-- end of collect product list-->



<xsl:variable name="dates">
  <xsl:for-each select="exsl:node-set($unsorted_dates)/date">
    <xsl:sort select="." />
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>

<xsl:variable name="manufacturers">
  <xsl:for-each select="exsl:node-set($unsorted_manufacturers)/manufacturer">
    <xsl:sort data-type="number" select="@amount" order="descending"/>
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>


<xsl:variable name="total_sales">
<xsl:value-of select="sum(exsl:node-set($manufacturers)/manufacturer/@amount)"/>
</xsl:variable>

<xsl:variable name="edge_sales">
<xsl:value-of select="$total_sales * 5 div 100"/>
</xsl:variable>

<!--Collect product list-->
<xsl:variable name="manufacturers_with_dates">
	<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kProductIDByKeys',concat(generate-id(../../..), product_id))[1])]">
		<product id="{product_id}">
		<xsl:variable name="vkeyGroup" select=
       "key('kProductIDByKeys', concat(generate-id(../../..), product_id))"/>

		<xsl:for-each select="exsl:node-set($dates)/date">
			<date month="{.}">
				<xsl:copy-of select="exsl:node-set($products)/product[@id=$vkeyGroup/product_id]/sku"/>
			</date>
		</xsl:for-each>
		</product>
	</xsl:for-each>
</xsl:variable>
<!-- end of collect product list-->






<!--Header-->
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>
      <xsl:text>Sales by Manufacturer</xsl:text>
    </title>
    <script type="text/javascript" src="https://www.google.com/jsapi"><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type="text/javascript">
      <xsl:text>google.load('visualization', '1', {packages: ['corechart']});</xsl:text>
    </script>
    <script type="text/javascript">
<xsl:text>      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month'</xsl:text>
<xsl:for-each select="exsl:node-set($manufacturers)/manufacturer[@amount&gt;=$edge_sales]">
		  <xsl:text>,'</xsl:text><xsl:value-of select="@id"/><xsl:text>'</xsl:text>
		  
		  
</xsl:for-each>		  
<xsl:if test="exsl:node-set($manufacturers)/manufacturer[@amount&lt;$edge_sales]" >		  
<xsl:text>,'Manufacturers with less than 5% share'</xsl:text>
</xsl:if>
		  <xsl:text>]
		  </xsl:text>

<!--End of Header-->





<xsl:for-each select="exsl:node-set($dates)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="$dateFilter" disable-output-escaping="yes"/><xsl:text>'</xsl:text>
	<xsl:for-each select="exsl:node-set($manufacturers)/manufacturer[@amount&gt;=$edge_sales]">
		<xsl:variable name="manufacturerFilter"><xsl:value-of select="@id"/></xsl:variable>
	<xsl:text>,</xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($raw_manufacturer_date)/manufacturer[@date=$dateFilter and @manufacturer=$manufacturerFilter]/@invoiced_amount),'#.##')"/>
</xsl:for-each>
<xsl:if test="exsl:node-set($manufacturers)/manufacturer[@amount&lt;$edge_sales]" >		  
<xsl:text>,Math.round(0</xsl:text>
<xsl:for-each select="exsl:node-set($manufacturers)/manufacturer[@amount&lt;$edge_sales]">
		<xsl:variable name="manufacturerFilter"><xsl:value-of select="@id"/></xsl:variable>
	<xsl:if test="sum(exsl:node-set($raw_manufacturer_date)/manufacturer[@date=$dateFilter and @manufacturer=$manufacturerFilter]/@invoiced_amount)>0">
	<xsl:text>+</xsl:text><xsl:value-of select="format-number(sum(exsl:node-set($raw_manufacturer_date)/manufacturer[@date=$dateFilter and @manufacturer=$manufacturerFilter]/@invoiced_amount),'#.##')"/>
	</xsl:if>
</xsl:for-each>
<xsl:text>)</xsl:text>


</xsl:if>


	<xsl:text>]
	</xsl:text>
	
 
 </xsl:for-each>
<xsl:text>]);</xsl:text>

<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.LineChart(document.getElementById('visualizationTotal'));
        ac.draw(data, {
          title : 'Monthly Invoiced Amount',
          isStacked: false,
          width: 1200,
          height: 600,
          vAxis: {title: "Amount"},
          hAxis: {title: "Month"}
        });
</xsl:text>
<xsl:text>  
      }
</xsl:text>














<xsl:text>  
      

      google.setOnLoadCallback(drawVisualization);
</xsl:text>
</script>




	
	





  </head>
  <body style="font-family: Arial;border: 0 none;bgcolor: #cccccc">
  <xsl:copy-of select="$report_range"/>
    <div id="visualizationTotal" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
  
  </body>
</html>
</xsl:template>
</xsl:stylesheet>