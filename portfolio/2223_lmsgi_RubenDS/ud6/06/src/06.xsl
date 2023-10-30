<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 11 de mayo de 2023, 9:39
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/network">
        <xsl:text>network: </xsl:text>
        <xsl:text>
    version: </xsl:text><xsl:value-of select="version"/>
        <xsl:text>
    renderer: network</xsl:text>
    <xsl:text>
    ethernets: 
    </xsl:text>
    
    </xsl:template>

</xsl:stylesheet>
