<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 13 de junio de 2023, 10:35
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/software-libre">
        <xsl:text>
            {
            "lanzamientos": [
        </xsl:text>
        <xsl:for-each select="lanzamientos/lanzamiento">
            <xsl:text>
                    {
            </xsl:text>
            <xsl:value-of select="concat('distribucion:',//@distribucion='ubuntu')"/>
            <xsl:value-of select="concat('version:',//@version)"/>
        </xsl:for-each>
        <xsl:text>
            }
        </xsl:text>
    </xsl:template>

</xsl:stylesheet>
