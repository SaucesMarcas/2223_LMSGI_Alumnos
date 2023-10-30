<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl.xsl
    Created on : 11 de mayo de 2023, 13:39
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/network">
        <xsl:text>network:</xsl:text>
        <xsl:text>version</xsl:text>
        <xsl:value-of select="version"/>
        <xsl:
    </xsl:template>
        <xsl:text>interface:</xsl:text>
        <xsl:text>ethernet:</xsl:text>
        <xsl:text>dhcp4</xsl:text>
        <xsl:text>address</xsl:text>
        <xsl:text>gateway</xsl:text>
        <xsl:text>nameservers</xsl:text>
        <xsl:text></xsl:text>
        <html>
            <head>
                <title>06.xsl.xsl</title>
            </head>
            <body>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
