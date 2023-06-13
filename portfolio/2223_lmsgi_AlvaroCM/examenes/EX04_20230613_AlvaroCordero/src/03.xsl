<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : notasfinales.xsl
    Created on : 25 de mayo de 2023, 13:09
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/software-libre">
        <xsl:element name="ultimaversion">
            <xsl:for-each select="/lanzamientos/lanzamiento">
                <xsl:element name="lanzamiento">
                    <xsl:attribute name="distribucion"></xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>        
    </xsl:template>
    <xsl:template match="/boletin">
        
    </xsl:template>
</xsl:stylesheet>
