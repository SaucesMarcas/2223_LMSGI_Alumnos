<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 9 de mayo de 2023, 9:39
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
        <xsl:text>  
   version: </xsl:text>
        <xsl:value-of select="version"/>
        <xsl:text>  
   renderer: networkd</xsl:text>
        <xsl:text>  
   ethernets:</xsl:text>
        <xsl:apply-templates select="interface"/>
    </xsl:template>
    
    <xsl:template match="interface">
        <xsl:text>
        </xsl:text>
        <xsl:value-of select="  ethernets"/>
        <xsl:text>  
            dhcp4: </xsl:text>
        <xsl:value-of select="dhcp4"/>
        <xsl:text>  
            address: </xsl:text>
        <xsl:value-of select="address"/>
        <xsl:text>  
            gateway4: </xsl:text>
        <xsl:value-of select="gateway"/>
        <xsl:apply-templates select="nameservers"/>
    </xsl:template>
    
    <xsl:template match="nameservers">
        <xsl:text>
            nameservers:</xsl:text>
        <xsl:value-of select="concat('[',address,',',address,']')"/>
    </xsl:template>

</xsl:stylesheet>
