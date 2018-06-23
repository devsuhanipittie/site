<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:exsl="http://exslt.org/common"
 exclude-result-prefixes="exsl">
 <xsl:output omit-xml-declaration="yes" indent="no" method="html"/>

 
<xsl:key name="kNewByKeys" match="order"
      use="concat(generate-id(..), fields/first_order)"/>

<xsl:key name="kPaymentTypeByKeys" match="order"
      use="concat(generate-id(..), payments/payment/method)"/>



	  
<xsl:key name="kNewDateByKeys" match="order"
      use="concat(generate-id(..), fields/first_order,'+',substring(normalize-space(fields/created_at),1,7))"/>

	  
<xsl:key name="kPaymentTypeDateByKeys" match="order"
      use="concat(generate-id(..), payments/payment/method,'+',substring(normalize-space(fields/created_at),1,7))"/>

<xsl:key name="kDateByKeys" match="order"
      use="concat(generate-id(..), substring(normalize-space(fields/created_at),1,7))"/>

 
 

 <xsl:template match="node()|@*">
    <xsl:apply-templates select="node()|@*"/>
 </xsl:template>

<xsl:template match="orders">
<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
<xsl:variable name="double_quote"><xsl:text>`</xsl:text></xsl:variable>

<xsl:variable name="report_range">
<h3><xsl:text>Sales by payment type.</xsl:text></h3><hr /><b style="color: #333333;
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

	<date date="{substring(normalize-space(fields/created_at),1,7)}" amount="{sum($datekeyGroup/fields[total_invoiced>0]/total_invoiced)}" count="{count($datekeyGroup/fields[total_invoiced>0]/total_invoiced)}" new_count="{count($datekeyGroup/fields[total_invoiced>0 and first_order=1]/total_invoiced)}" new_amount="{sum($datekeyGroup/fields[total_invoiced>0 and first_order=1]/total_invoiced)}" old_amount="{sum($datekeyGroup/fields[total_invoiced>0 and not(first_order=1)]/total_invoiced)}" old_count="{count($datekeyGroup/fields[total_invoiced>0 and not(first_order=1)]/total_invoiced)}"><xsl:value-of select="substring(normalize-space(fields/created_at),1,7)" disable-output-escaping="yes"/></date>
</xsl:for-each>
</xsl:variable>

<!--Sort dates-->
<xsl:variable name="dates">
  <xsl:for-each select="exsl:node-set($unsorted_dates)/date">
    <xsl:sort select="." />
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>


<xsl:variable name="payments_with_dates">
<xsl:for-each select=
     "order[generate-id()
          =
           generate-id(key('kPaymentTypeDateByKeys',
                           concat(generate-id(..), payments/payment/method,'+',substring(normalize-space(fields/created_at),1,7))
                           )[1]
                       )
           ]
     ">
	<xsl:variable name="paymentkeyGroup" select=
       "key('kPaymentTypeByKeys', concat(generate-id(..), payments/payment/method))"/>
	<payment date="{substring(normalize-space(fields/created_at),1,7)}" payment="{payments/payment/method}" amount="{sum($paymentkeyGroup/fields[total_invoiced>0]/total_invoiced)}" count="{count($paymentkeyGroup/fields[total_invoiced>0]/total_invoiced)}"><xsl:value-of select="payments/payment/method" disable-output-escaping="yes"/></payment>
</xsl:for-each>
</xsl:variable>



<!--collect datelist-->
<xsl:variable name="payments">
<xsl:for-each select=
     "order[generate-id()
          =
           generate-id(key('kPaymentTypeByKeys',
                           concat(generate-id(..), payments/payment/method)
                           )[1]
                       )
           ]
     ">
	<xsl:variable name="paymentkeyGroup" select=
       "key('kPaymentTypeByKeys', concat(generate-id(..), payments/payment/method))"/>
	<payment amount="{sum($paymentkeyGroup/fields[total_invoiced>0]/total_invoiced)}" count="{count($paymentkeyGroup/fields[total_invoiced>0]/total_invoiced)}"><xsl:value-of select="payments/payment/method" disable-output-escaping="yes"/></payment>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="pre_raw_paymenttype_date">
<!--Skip for configurable simples-->

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

	<date month="{substring(normalize-space(fields/created_at),1,7)}">
		<xsl:for-each select="exsl:node-set($payments)/payment[@amount>0]">

		<xsl:variable name="filterPayment"><xsl:value-of select="."/></xsl:variable>
		<payment invoiced_amount="{sum($datekeyGroup[payments/payment/method=$filterPayment]/fields[total_invoiced>0]/total_invoiced)}" invoiced_count="{count($datekeyGroup[payments/payment/method=$filterPayment]/fields[total_invoiced>0]/total_invoiced)}"/>

		
	</xsl:for-each>
	</date>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="raw_paymenttype_date">
  <xsl:for-each select="exsl:node-set($pre_raw_paymenttype_date)/date">
    <xsl:sort select="@month" />
    <xsl:copy-of select="." />
  </xsl:for-each>
</xsl:variable>



<!--Collect product list-->
<xsl:variable name="zpayments_with_dates">
		<xsl:for-each select="exsl:node-set($dates)/date">
			<date month="{.}">
			<xsl:variable name="filterDate"><xsl:value-of select="."/></xsl:variable>
				<xsl:for-each select="exsl:node-set($payments)/payment">
					<xsl:variable name="filterPayment"><xsl:value-of select="."/></xsl:variable>
					<payment><xsl:value-of select="sum(exsl:node-set($raw_paymenttype_date)/payment/@amount)"/></payment>
				</xsl:for-each>
			</date>
		</xsl:for-each>
</xsl:variable>
<!-- end of collect product list-->






<!--Header-->
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>
      <xsl:text>Sales by payment type</xsl:text>
    </title>
    <script type="text/javascript" src="https://www.google.com/jsapi"><xsl:text><![CDATA[ ]]></xsl:text></script>
    <script type="text/javascript">
      <xsl:text>google.load('visualization', '1', {packages: ['corechart']});</xsl:text>
    </script>
    <script type="text/javascript">
<xsl:text>      function drawVisualizationAmount() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month'</xsl:text>
<xsl:for-each select="exsl:node-set($payments)/payment[@amount>0]">		  
<xsl:text>,'</xsl:text><xsl:value-of select="normalize-space(.)" /><xsl:text>'</xsl:text>
</xsl:for-each>
		  <xsl:text>]
		  </xsl:text>

<!--End of Header-->

<xsl:for-each select="exsl:node-set($raw_paymenttype_date)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="@month" disable-output-escaping="yes"/><xsl:text>'</xsl:text>
	<xsl:for-each select="payment">
		<xsl:text>,</xsl:text><xsl:value-of select="format-number(@invoiced_amount,'#.##')"/>
	</xsl:for-each>
	<xsl:text>]
	</xsl:text>
	
 
</xsl:for-each>
<xsl:text>]);</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.LineChart(document.getElementById('visualizationAmount'));
        ac.draw(data, {
          title : 'Monthly Invoiced Amount by Payment type',
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



<xsl:text>      function drawVisualizationCount() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month'</xsl:text>
<xsl:for-each select="exsl:node-set($payments)/payment[@amount>0]">		  
<xsl:text>,'</xsl:text><xsl:value-of select="normalize-space(.)" /><xsl:text>'</xsl:text>
</xsl:for-each>
		  <xsl:text>]
		  </xsl:text>

<!--End of Header-->

<xsl:for-each select="exsl:node-set($raw_paymenttype_date)/date">
<xsl:variable name="dateFilter"><xsl:value-of select="."/></xsl:variable>


	   
	<xsl:text>,['</xsl:text><xsl:value-of select="@month" disable-output-escaping="yes"/><xsl:text>'</xsl:text>
	<xsl:for-each select="payment">
		<xsl:text>,</xsl:text><xsl:value-of select="format-number(@invoiced_count,'#')"/>
	</xsl:for-each>
	<xsl:text>]
	</xsl:text>
	
 
</xsl:for-each>
<xsl:text>]);</xsl:text>


<xsl:text>        // Create and draw the visualization.
        var ac = new google.visualization.LineChart(document.getElementById('visualizationCount'));
        ac.draw(data, {
          title : 'Monthly Invoiced Order Count by Payment type',
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
      google.setOnLoadCallback(drawVisualizationCount);
</xsl:text>

</script>

  </head>
  <body style="font-family: Arial;border: 0 none;bgcolor: #cccccc">
  <xsl:copy-of select="$report_range"/>
    <div id="visualizationAmount" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>
    <div id="visualizationCount" style="width: 1200px; height: 600px;"><xsl:text><![CDATA[ ]]></xsl:text></div>

  
  </body>
</html>
</xsl:template>
</xsl:stylesheet>