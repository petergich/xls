<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="nutrition.xml">
    <html>
      <head>
        <title>Nutrition Facts for Grandma White's Cookies</title>
        <style>
          /* Define your CSS styles here */
          body {
            font-family: Arial, sans-serif;
          }
          table {
            border-collapse: collapse;
            width: 60%;
            margin: 20px;
          }
          th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h1>Nutrition Facts for Grandma White's Cookies</h1>
        <table>
          <tr>
            <th>Nutrition Fact</th>
            <th>Value</th>
          </tr>
          <xsl:apply-templates select="product"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="product">
    <xsl:apply-templates select="serving"/>
    <xsl:apply-templates select="calories"/>
    <xsl:apply-templates select="fat"/>
    <xsl:apply-templates select="cholesterol"/>
    <xsl:apply-templates select="sodium"/>
    <xsl:apply-templates select="carbohydrates"/>
    <xsl:apply-templates select="protein"/>
  </xsl:template>

  <xsl:template match="serving|calories|fat|cholesterol|sodium|carbohydrates|protein">
    <tr>
      <td><xsl:value-of select="normalize-space(local-name())"/></td>
      <td><xsl:value-of select="."/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
