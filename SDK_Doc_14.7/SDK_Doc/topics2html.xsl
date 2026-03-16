<?xml version="1.0"?>
<xsl:stylesheet
   version="1.1"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="no" encoding="UTF-8" />

<xsl:template match="/">
   <html>
      <head>
        <link href="help.css" rel="stylesheet" type="text/css"/>
      </head>
      <body>
        <xsl:for-each select="dummy/toc">
          <xsl:call-template name="toc_template"/>
        </xsl:for-each>
      </body>
   </html>
</xsl:template>

<xsl:template name="toc_template">
         <h1><xsl:value-of select="@label" /></h1>
         <ul>
            <xsl:apply-templates />
         </ul>
</xsl:template>

<xsl:template match="topic">
   <li>
      <xsl:choose>
         <xsl:when test="@href">
            <xsl:element name="a">
               <xsl:attribute name="href">
                  <xsl:value-of select="@href" />
               </xsl:attribute>
               <xsl:attribute name="target">SDK_Help_Contents</xsl:attribute>
               <xsl:value-of select="@label" />
            </xsl:element>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="@label" />
         </xsl:otherwise>
      </xsl:choose>

      <xsl:if test="descendant::topic">
         <ul>
            <xsl:apply-templates/>
         </ul>
      </xsl:if>
   </li>
</xsl:template>

</xsl:stylesheet>
