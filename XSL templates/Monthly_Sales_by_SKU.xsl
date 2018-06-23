<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:exsl="http://exslt.org/common"
 exclude-result-prefixes="exsl">
 <xsl:output omit-xml-declaration="yes" indent="no" method="html"/>

 
<!-- Define Key splits order items by SKU-->
 <xsl:key name="kGlobalByKeys" match="items/item"
      use="generate-id(../../..)"/>

 
 <!-- Define Key splits order items by SKU-->
 <xsl:key name="kSkuByKeys" match="items/item"
      use="concat(generate-id(../../..), sku)"/>

	  <!-- Define Key splits order items by SKU-->
 <xsl:key name="kProductSkuByKeys" match="items/item"
      use="concat(generate-id(../../..),product_id,'+',sku)"/>
 
<!-- Define Key splits order items by product ID-->
<xsl:key name="kProductIDByKeys" match="items/item"
      use="concat(generate-id(../../..), product_id)"/>

<!-- Define Key splits order items by product_id and Year-Month date-->
<xsl:key name="kProductIDDateByKeys" match="items/item"
      use="concat(generate-id(../../..), product_id,'+',substring(normalize-space(created_at),1,7))"/>

<!-- Define Key splits order items by product_id and Year-Month date-->
<xsl:key name="kProductIDSkuDateByKeys" match="items/item"
      use="concat(generate-id(../../..), product_id,'+',sku,'+',substring(normalize-space(created_at),1,7))"/>

<!-- Define Key splits order items by product_id and Year-Month date-->
<xsl:key name="kSkuDateByKeys" match="items/item"
      use="concat(generate-id(../../..), sku,'+',substring(normalize-space(created_at),1,7))"/>

	  <!-- Define Key splits order items by Year-Month date in the product-->
<xsl:key name="kProductDateByKeys" match="items/item"
      use="concat(generate-id(../../..), substring(normalize-space(created_at),1,7))"/>

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
<h3><xsl:text>SKU/Product monthly sales chart.</xsl:text></h3><hr /><b style="color: #333333;
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




<xsl:variable name="raw_sku_items_date">
<!--Skip for configurable simples-->
<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kProductIDSkuDateByKeys',concat(generate-id(../../..), product_id,'+',sku,'+',substring(normalize-space(created_at),1,7)))[1])]">
<xsl:variable name="vskudatekeyGroup" select=
       "key('kProductIDSkuDateByKeys', concat(generate-id(../../..), product_id,'+',sku,'+',substring(normalize-space(created_at),1,7)))"/>

<item date="{substring(normalize-space(created_at),1,7)}" product_id="{product_id}" sku="{normalize-space(sku)}" invoiced_amount="{sum($vskudatekeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vskudatekeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vskudatekeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])}"/>
</xsl:for-each>
</xsl:variable>




<xsl:variable name="raw_sku_items">
<!--Skip for configurable simples-->
<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kProductSkuByKeys',concat(generate-id(../../..), product_id,'+',sku))[1])]">
<xsl:variable name="vskukeyGroup" select=
       "key('kProductSkuByKeys', concat(generate-id(../../..), product_id,'+',sku))"/>

<item product_id="{product_id}" sku="{normalize-space(sku)}" invoiced_amount="{sum($vskukeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vskukeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vskukeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])}"/>
</xsl:for-each>
</xsl:variable>






<!--Collect product list-->
<xsl:variable name="unsorted_products">
<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kProductIDByKeys',concat(generate-id(../../..), product_id))[1])]">
<xsl:variable name="vkeyGroup" select=
       "key('kProductIDByKeys', concat(generate-id(../../..), product_id))"/>
<xsl:if test="sum($vkeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vkeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vkeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])>0">
	   <product id="{product_id}" amount="{sum($vkeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vkeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vkeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN'])}">
<xsl:if test="product_type='configurable'">

</xsl:if>
<xsl:for-each select="exsl:node-set($raw_sku_items)/item[@product_id=current()/product_id]">

<!--<xsl:for-each select="/orders/order/items/item[product_id=current()/product_id and generate-id()=generate-id(key('kSkuByKeys',concat(generate-id(../../..), sku))[1])]">-->
<xsl:if test="@invoiced_amount>0">

<sku><xsl:value-of select="@sku" disable-output-escaping="yes"/></sku>
</xsl:if>
</xsl:for-each>
</product>
</xsl:if>
</xsl:for-each>
</xsl:variable>
<!-- end of collect product list-->



<xsl:variable name="dates">
  <xsl:for-each select="exsl:node-set($unsorted_dates)/date">
    <xsl:sort select="." />
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>

<xsl:variable name="products">
  <xsl:for-each select="exsl:node-set($unsorted_products)/product">
    <xsl:sort data-type="number" select="@amount" order="descending"/>
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>

<!--Collect product list-->
<xsl:variable name="products_with_dates">
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
      <xsl:text>Sales by SKU</xsl:text>
    </title>
    <script type="text/javascript" src="https://www.google.com/jsapi"><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type="text/javascript">
      <xsl:text>google.load('visualization', '1', {packages: ['corechart']});</xsl:text>
    </script>
    <script type="text/javascript">
<xsl:text>      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month',   'Total sales']
		  </xsl:text>

<!--End of Header-->




<!--First round. Build chart with mountly sales by invoiced amount for products only without shipping-->
<xsl:for-each select=
     "order/items/item[not(parent_item_id) and generate-id()
          =
           generate-id(key('kGlobalByKeys',
                           generate-id(../../..)
                           )[1]
                       )
           ]
     ">

	  <xsl:variable name="vkeyGroup" select=
       "key('kGlobalByKeys', generate-id(../../..))"/>

<xsl:for-each select="exsl:node-set($dates)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="$dateFilter" disable-output-escaping="yes"/><xsl:text>',</xsl:text><xsl:value-of select="sum($vkeyGroup[substring(normalize-space(created_at),1,7)=$dateFilter and ((parent_item_id and parent_item_id='') or not(parent_item_id))]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($vkeyGroup[substring(normalize-space(created_at),1,7)=$dateFilter and ((parent_item_id and parent_item_id='') or not(parent_item_id))]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($vkeyGroup[substring(normalize-space(created_at),1,7)=$dateFilter and ((parent_item_id and parent_item_id='') or not(parent_item_id))]/base_tax_invoiced[format-number(number(),'#')!='NaN'])"/><xsl:text>]
	</xsl:text>
	
 
    </xsl:for-each>
<xsl:text>]);</xsl:text>
</xsl:for-each>

<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.ColumnChart(document.getElementById('visualizationTotal'));
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



<xsl:for-each select="order/items/item[generate-id()=generate-id(key('kProductIDByKeys',concat(generate-id(../../..), product_id))[1])]">
	 <!--Create variable with product ID-->
	 <xsl:if test="product_id &gt; 0 ">
	<xsl:variable name="productkeyGroup" select=
       "key('kProductIDByKeys', concat(generate-id(../../..), product_id))" />
	<xsl:if test="sum($productkeyGroup[not(parent_item_id)]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($productkeyGroup[not(parent_item_id)]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($productkeyGroup[not(parent_item_id)]/base_tax_invoiced[format-number(number(),'#')!='NaN']) > exsl:node-set($products)/product[position()=200]/@amount or not(exsl:node-set($products)/product[200])">
	<xsl:variable name="currentProductID"><xsl:value-of select="product_id" /></xsl:variable>
	<xsl:variable name="currentProductName"><xsl:value-of select="name" /></xsl:variable>
	<xsl:variable name="currentProductCurrency"><xsl:value-of select="normalize-space(../../fields/order_currency_code)" /></xsl:variable>
<!--Declare new data table-->
<xsl:text>
      function drawVisualization</xsl:text><xsl:value-of select="$currentProductID" /><xsl:text>() {
        // Some raw data (not necessarily accurate)


        var data = google.visualization.arrayToDataTable([
</xsl:text>
<!--Get information about the product-->
	<!---Display product ID-->
<xsl:text>
['Month'</xsl:text>


		<xsl:for-each select=
     "exsl:node-set($products)/product[@id=$currentProductID]/sku">
				<xsl:text>,'</xsl:text><xsl:value-of select="current()" /><xsl:text>'</xsl:text>
			</xsl:for-each>
			<xsl:text>]
			</xsl:text>
		<!-- Start table. Get all dates-->
		<!--display header of the table-->

		<!--display date rows-->
		<xsl:for-each select="exsl:node-set($products_with_dates)/product[@id=$currentProductID]/date">
		<xsl:text>
		,['</xsl:text><xsl:value-of select="@month"/><xsl:text>'</xsl:text>
		<!--<xsl:copy-of select="$skutest" />-->
		<xsl:for-each select="exsl:node-set($products_with_dates)/product[@id=$currentProductID]/date[@month=current()/@month]/sku">
				<xsl:text>,</xsl:text><xsl:value-of select="format-number(sum($productkeyGroup[not(parent_item_id) and normalize-space(sku)=current() and substring(normalize-space(created_at),1,7)=current()/../@month]/base_row_invoiced[format-number(number(),'#')!='NaN'])-sum($productkeyGroup[not(parent_item_id) and normalize-space(sku)=current() and substring(normalize-space(created_at),1,7)=current()/../@month]/base_discount_invoiced[format-number(number(),'#')!='NaN'])+sum($productkeyGroup[not(parent_item_id) and normalize-space(sku)=current() and substring(normalize-space(created_at),1,7)=current()/../@month]/base_tax_invoiced[format-number(number(),'#')!='NaN']),'#.##')"/>
<!--				<value><xsl:value-of select="sum($productkeyGroup[sku=$skuFilter and substring(normalize-space(created_at),1,7)=$dateFilter]/base_row_invoiced[format-number(number(),'#')!='NaN'])"/></value>-->
			</xsl:for-each>
			<xsl:text>]</xsl:text>
		</xsl:for-each>
<xsl:text>
]);

</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.ColumnChart(document.getElementById('visualization</xsl:text><xsl:value-of select="$currentProductID" /><xsl:text>'));
        ac.draw(data, {
          title : '</xsl:text><xsl:value-of select="normalize-space(translate($currentProductName,$apos,$double_quote))" /><xsl:text>. Monthly Invoiced Amount.',
          isStacked: false,
          width: 1200,
          height: 600,
          vAxis: {title: "Amount, </xsl:text><xsl:value-of select="$currentProductCurrency" /><xsl:text>"},
          hAxis: {title: "Month"}
        });
      }

      google.setOnLoadCallback(drawVisualization</xsl:text><xsl:value-of select="$currentProductID" /><xsl:text>);

</xsl:text>

</xsl:if>
</xsl:if>
</xsl:for-each>

<xsl:text>  
      

      google.setOnLoadCallback(drawVisualization);
</xsl:text>
</script>

  </head>
  <body style="font-family: Arial;border: 0 none;bgcolor: #cccccc">
  <xsl:copy-of select="$report_range"/>
    <div id="visualizationTotal" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
  <xsl:for-each select="exsl:node-set($products)/product">
	 <xsl:if test="@id &gt; 0 and position() &lt; 200">
	<div id="visualization{@id}" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div><xsl:text>
	</xsl:text>
</xsl:if>

	</xsl:for-each>
  
  </body>
</html>
</xsl:template>
</xsl:stylesheet>