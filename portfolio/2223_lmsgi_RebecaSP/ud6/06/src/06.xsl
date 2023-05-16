<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 9 de mayo de 2023, 9:34
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/network">
<xsl:text>network:</xsl:text>
<xsl:text>
    version: <xsl:text><xsl:value-of select="version"/></xsl:text></xsl:text>
<xsl:text>
    renderer: network
    ethernets: </xsl:text><xsl:apply-templates select="interface"/>
</xsl:template>
<xsl:template match="interface">
    <xsl:text><xsl:value-of select="concat(ethernets,':')"/>
        </xsl:text>
        <xsl:text><xsl:value-of select="concat('dhcp4: ',dhcp4)"/>
        </xsl:text>
        <xsl:text><xsl:value-of select="concat('address: [',address,'/24]')"/>
        </xsl:text>
        <xsl:text><xsl:value-of select="concat('gateway: ',gateway)"/>
        </xsl:text>
<xsl:text>
        nameservers: [<xsl:text><xsl:apply-templates select="nameservers/address"/></xsl:text></xsl:text>
<xsl:text>]</xsl:text>
</xsl:template>

<xsl:template match="nameservers/address">
<xsl:value-of select="./text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if>
</xsl:template>
</xsl:stylesheet>