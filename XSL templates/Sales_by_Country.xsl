<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:exsl="http://exslt.org/common"
 xmlns:math="http://exslt.org/math"
                extension-element-prefixes="math"
				exclude-result-prefixes="exsl">
 <xsl:output omit-xml-declaration="yes" indent="no" method="html"/>

 
 <xsl:key name="kRegionByKeys" match="order"
      use="concat(generate-id(..), translate(concat(addresses/address[1]/country_id, '+',substring(addresses/address[1]/postcode,1,3)),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'))"/>

 <xsl:key name="kCountryByKeys" match="order"
      use="concat(generate-id(..), addresses/address[1]/country_id)"/>

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">
<xsl:variable name="report_range">
<h3><xsl:text>Sales by Country.</xsl:text></h3><hr /><b style="color: #333333;
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


<!--Get list of all countries-->

<!--Collect product list-->
<xsl:variable name="unsorted_countries">
	<xsl:for-each select="order[generate-id() =  generate-id(key('kCountryByKeys',concat(generate-id(..), addresses/address[1]/country_id))[1])]">
      <xsl:variable name="countrykeyGroup" select=
       "key('kCountryByKeys', concat(generate-id(..), addresses/address[1]/country_id))"/>
<xsl:if test="sum($countrykeyGroup/fields[total_invoiced>0]/total_invoiced)>0">
		<country id="{normalize-space(addresses/address[1]/country_id)}" amount="{sum($countrykeyGroup/fields[total_invoiced>0]/total_invoiced)}" currency="{normalize-space(fields/order_currency_code)}">
		</country>
</xsl:if>
</xsl:for-each>
</xsl:variable>
<!-- end of collect product list-->


<xsl:variable name="countries">
  <xsl:for-each select="exsl:node-set($unsorted_countries)/country">
    <xsl:sort data-type="number" select="@amount" order="descending"/>
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>



<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
<xsl:variable name="double_quote"><xsl:text>`</xsl:text></xsl:variable>

<!--<xsl:copy-of select="$countries" />-->


<html>
  <head>
    <title>Sales by Country. World Map.</title>
    <script type='text/javascript' src='https://www.google.com/jsapi'><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type='text/javascript'><xsl:text>
     google.load('visualization', '1', {'packages': ['geochart','table']});
     google.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {
var data = new google.visualization.DataTable();
        data.addColumn('string', 'Country');
        data.addColumn('number', 'Sales Amount');
data.addRows([			
</xsl:text>



<xsl:for-each select="exsl:node-set($countries)/country">
	<xsl:if test="current()/@amount&gt;50">
	<xsl:if test="position()&gt;1"><xsl:text>,</xsl:text></xsl:if>
    <xsl:text>['</xsl:text>
	<xsl:value-of select="translate(normalize-space(current()/@id),$apos,$double_quote)" disable-output-escaping="yes"/><xsl:text>',{v:</xsl:text><xsl:value-of select="format-number(math:log(current()/@amount)-3,'#.00')"/><xsl:text>, f:'</xsl:text><xsl:value-of select="current()/@currency"/><xsl:text> </xsl:text><xsl:value-of select="format-number(current()/@amount,'###,###.00')"/><xsl:text>'}]
	</xsl:text>
	</xsl:if>
</xsl:for-each>

<xsl:text>
 ]);

        var options = {legend: 'none'};

        var chart = new google.visualization.GeoChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    };</xsl:text>




    </script>

  </head>
  <body style="font-family: Arial;border: 0 none;">
    <xsl:copy-of select="$report_range"/>
    <div id="chart_div" style="width: 900px; height: 500px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
	
  </body>
</html>	
</xsl:template>
</xsl:stylesheet>