<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="client.css"/>
      </head>
      <body>
        <h2>products</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>description</th>
            <th>Price</th>
            <th>Image</th>
           
          </tr>
          <xsl:for-each select="products/record">
          <tr>
             <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="description"/></td>
            <td><xsl:value-of select="price"/></td>
            <td><img>
    <xsl:attribute name="src">
        <xsl:value-of select="image"/>
    </xsl:attribute>
</img></td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
