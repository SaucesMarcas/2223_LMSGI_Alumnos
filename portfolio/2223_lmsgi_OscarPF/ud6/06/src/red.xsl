<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : red.xsl
    Created on : 9 de mayo de 2023, 9:37
    Author     : Oscar Pascual Ferrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/network">
        <xsl:text>network:</xsl:text>
        <xsl:text>
   version: </xsl:text><xsl:value-of select="version"/>
        <xsl:apply-templates select="interface"/>
    </xsl:template>
    
    <xsl:template match="interface">
        <xsl:text>
   interface:</xsl:text>
        <xsl:text>
      ethernets: </xsl:text><xsl:value-of select="ethernets"/>
        <xsl:text>
      dhcp4: </xsl:text><xsl:value-of select="dhcp4"/>
        <xsl:text>
      address: </xsl:text><xsl:value-of select="concat('[',address,'/24]')"/>
        <xsl:text>
      gateway: </xsl:text><xsl:value-of select="gateway"/>
        <xsl:text>
      nameservers: [</xsl:text>
        <xsl:apply-templates select="nameservers/address"/>]
        
    </xsl:template>
        
    
    <xsl:template match="nameservers/address">
        <xsl:value-of select="current()"/>
        <xsl:if test="position()!= last()">
            <xsl:text>,</xsl:text>
        </xsl:if>        
    </xsl:template>
    
</xsl:stylesheet>
