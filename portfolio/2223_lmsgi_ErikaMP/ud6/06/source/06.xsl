<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 9 de mayo de 2023, 9:34
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="yes"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/network">
        network:
        <xsl:value-of select="concat('version: ',version)"/>
        renderer: network
        ethernets:
        <xsl:apply-templates select="interface"/>
    </xsl:template>
    
    <xsl:template match="interface">
        <xsl:value-of select="concat(ethernets,':')"/>
        <xsl:value-of select="concat('dhcp4:',dhcp4)"/>
        <xsl:value-of select="concat('address: [',address,'/24]')"/>
        <xsl:value-of select="concat('gateway: ',gateway)"/>
        <xsl:apply-templates select="nameservers/address"/>
    </xsl:template>
    
    <xsl:template match="nameservers/address">
        <xsl:value-of select="./text()"/>
    </xsl:template>

</xsl:stylesheet>
