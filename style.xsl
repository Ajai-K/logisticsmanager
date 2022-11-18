<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Trip Infomation</h2>
  <table border="1">
    <tr bgcolor="#0073e6">
      <th style="text-align:left"> ID</th>
      <th style="text-align:left"> Number</th>
      <th style="text-align:left"> From</th>
      <th style="text-align:left"> TO</th>
     
    </tr>
    <xsl:for-each select="trips/trip">
    <xsl:sort select="to"/>
    <tr bgcolor="#ccffff">
      <td><xsl:value-of select="tripid"/></td>
      <td><xsl:value-of select="vehicle"/></td>
      <td><xsl:value-of select="from"/></td>
      <td><xsl:value-of select="to"/></td>
      
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>