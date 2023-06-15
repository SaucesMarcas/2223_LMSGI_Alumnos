<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 11 de junio de 2023, 14:02
    Author     : amor
    Description:
       Transformar un XML en un fichero JSON 
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes"/>
 <xsl:template match="/">
{
"lanzamientos": [ <xsl:for-each select="//lanzamiento[@distribucion='ubuntu' or @distribucion='redhat']">
                    {
                     "distribucion":"<xsl:value-of select="@distribucion"/>",
                     "version":"<xsl:value-of select="@version"/>"
                    }<xsl:if test= "position()!=count(//lanzamiento[@distribucion='ubuntu']) + count(//lanzamiento[@distribucion='redhat']) ">,</xsl:if>
        </xsl:for-each>
                ]
}   
</xsl:template>

</xsl:stylesheet>
