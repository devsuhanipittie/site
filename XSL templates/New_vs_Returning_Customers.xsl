<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:exsl="http://exslt.org/common"
 exclude-result-prefixes="exsl">
 <xsl:output omit-xml-declaration="yes" indent="no" method="html"/>

 
<xsl:key name="kNewByKeys" match="order"
      use="concat(generate-id(..), fields/first_order)"/>

 
<xsl:key name="kNewDateByKeys" match="order"
      use="concat(generate-id(..), fields/first_order,'+',substring(normalize-space(fields/created_at),1,7))"/>

<xsl:key name="kDateByKeys" match="order"
      use="concat(generate-id(..), substring(normalize-space(fields/created_at),1,7))"/>

 
 

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">
<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
<xsl:variable name="double_quote"><xsl:text>`</xsl:text></xsl:variable>

<xsl:variable name="report_range">
<h3><xsl:text>New vs. Returning customers report.</xsl:text></h3><hr /><b style="color: #333333;
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
     "order[generate-id()
          =
           generate-id(key('kDateByKeys',
                           concat(generate-id(..), substring(normalize-space(fields/created_at),1,7))
                           )[1]
                       )
           ]
     ">
	<xsl:variable name="datekeyGroup" select=
       "key('kDateByKeys', concat(generate-id(..), substring(normalize-space(fields/created_at),1,7)))"/>

	<date amount="{sum($datekeyGroup/fields[total_invoiced>0]/total_invoiced)}" count="{count($datekeyGroup/fields[total_invoiced>0]/total_invoiced)}" new_count="{count($datekeyGroup/fields[total_invoiced>0 and first_order=1]/total_invoiced)}" new_amount="{sum($datekeyGroup/fields[total_invoiced>0 and first_order=1]/total_invoiced)}" old_amount="{sum($datekeyGroup/fields[total_invoiced>0 and not(first_order=1)]/total_invoiced)}" old_count="{count($datekeyGroup/fields[total_invoiced>0 and not(first_order=1)]/total_invoiced)}"><xsl:value-of select="substring(normalize-space(fields/created_at),1,7)" disable-output-escaping="yes"/></date>
</xsl:for-each>
</xsl:variable>

<!--Sort dates-->
<xsl:variable name="dates">
  <xsl:for-each select="exsl:node-set($unsorted_dates)/date">
    <xsl:sort select="." />
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>

<!--Header-->
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>
      <xsl:text>New vs. Returning customers chart</xsl:text>
    </title>
    <script type="text/javascript" src="https://www.google.com/jsapi"><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type="text/javascript">
      <xsl:text>google.load('visualization', '1', {packages: ['corechart']});</xsl:text>
    </script>
    <script type="text/javascript">
<xsl:text>      function drawVisualizationAmount() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month',   'New customer sales', 'Returning customers sales']
		  </xsl:text>

<!--End of Header-->

<xsl:for-each select="exsl:node-set($dates)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="." disable-output-escaping="yes"/><xsl:text>',</xsl:text><xsl:value-of select="format-number(@new_amount,'#.##')"/><xsl:text>,</xsl:text><xsl:value-of select="format-number(@old_amount,'#.##')"/><xsl:text>]
	</xsl:text>
	
 
</xsl:for-each>
<xsl:text>]);</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.ColumnChart(document.getElementById('visualizationAmount'));
        ac.draw(data, {
          title : 'New vs. Returning Customers Monthly Invoiced Amount',
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
      google.setOnLoadCallback(drawVisualizationAmount);
</xsl:text>


<xsl:text>      function drawVisualizationAmountPercent() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month',   'New customer sales %', 'Returning customer sales %']
		  </xsl:text>

<!--End of Header-->

<xsl:for-each select="exsl:node-set($dates)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="." disable-output-escaping="yes"/><xsl:text>',</xsl:text><xsl:value-of select="format-number(100 * @new_amount div @amount,'#.##')"/><xsl:text>,</xsl:text><xsl:value-of select="format-number(100 * @old_amount div @amount,'#.##')"/><xsl:text>]
	</xsl:text>
	
 
</xsl:for-each>
<xsl:text>]);</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.ColumnChart(document.getElementById('visualizationAmountPercent'));
        ac.draw(data, {
          title : 'New vs. Returning Customers Monthly Invoiced Amount Shares.',
          isStacked: true,
          width: 1200,
          height: 600,
          vAxis: {title: "Share"},
          hAxis: {title: "Month"}
        });
</xsl:text>
<xsl:text>  
      }
</xsl:text>
<xsl:text>  
      google.setOnLoadCallback(drawVisualizationAmountPercent);
</xsl:text>



<xsl:text>      function drawVisualizationCount() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month',   'New customer order QTY', 'Returning customer order QTY']
		  </xsl:text>

<!--End of Header-->

<xsl:for-each select="exsl:node-set($dates)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="." disable-output-escaping="yes"/><xsl:text>',</xsl:text><xsl:value-of select="format-number(@new_count,'#.##')"/><xsl:text>,</xsl:text><xsl:value-of select="format-number(@old_count,'#.##')"/><xsl:text>]
	</xsl:text>
	
 
</xsl:for-each>
<xsl:text>]);</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.ColumnChart(document.getElementById('visualizationCount'));
        ac.draw(data, {
          title : 'New vs. Returning Customers Monthly Invoiced Order QTY',
          isStacked: false,
          width: 1200,
          height: 600,
          vAxis: {title: "Order QTY"},
          hAxis: {title: "Month"}
        });
</xsl:text>
<xsl:text>  
      }
</xsl:text>
<xsl:text>  
      google.setOnLoadCallback(drawVisualizationCount);
</xsl:text>


<xsl:text>      function drawVisualizationCountPercent() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month',   'New customer orders %', 'Returning customers orders %']
		  </xsl:text>

<!--End of Header-->

<xsl:for-each select="exsl:node-set($dates)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="." disable-output-escaping="yes"/><xsl:text>',</xsl:text><xsl:value-of select="format-number(100 * @new_count div @count,'#.##')"/><xsl:text>,</xsl:text><xsl:value-of select="format-number(100 * @old_count div @count,'#.##')"/><xsl:text>]
	</xsl:text>
	
 
</xsl:for-each>
<xsl:text>]);</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.ColumnChart(document.getElementById('visualizationCountPercent'));
        ac.draw(data, {
          title : 'New vs. Returning Customer Monthly Invoiced Orders Shares.',
          isStacked: true,
          width: 1200,
          height: 600,
          vAxis: {title: "Share"},
          hAxis: {title: "Month"}
        });
</xsl:text>
<xsl:text>  
      }
</xsl:text>
<xsl:text>  
      google.setOnLoadCallback(drawVisualizationCountPercent);
</xsl:text>

</script>

  </head>
  <body style="font-family: Arial;border: 0 none;bgcolor: #cccccc">
  <xsl:copy-of select="$report_range"/>
    <div id="visualizationAmount" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
    <div id="visualizationAmountPercent" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
    <div id="visualizationCount" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
    <div id="visualizationCountPercent" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>

  
  </body>
</html>
</xsl:template>
</xsl:stylesheet>