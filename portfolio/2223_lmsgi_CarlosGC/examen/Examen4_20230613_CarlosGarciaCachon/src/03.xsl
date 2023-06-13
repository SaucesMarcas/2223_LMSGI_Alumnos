<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : notasfinales.xsl
    Created on : 1 de junio de 2023, 13:13
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/software-libre">
        <xsl:element name="ultimaversion">
            <xsl:for-each select="//lanzamientos/lanzamiento">
                <xsl:element name="lanzamiento">
                    <xsl:attribute name="distribucion">
                        <xsl:value-of select="@distribucion"/>
                    </xsl:attribute>
                    <xsl:attribute name="version">
                        <xsl:value-of select="@version"/>
                    </xsl:attribute>
                    <xsl:attribute name="año">
                        <xsl:value-of select="@año"/>
                    </xsl:attribute><xsl:attribute name="mes">
                        <xsl:value-of select="@mes"/>
                    </xsl:attribute>
                    <xsl:attribute name="escritorio">
                        <xsl:value-of select="@escritorio"/>
                    </xsl:attribute>
                    <xsl:attribute name="kernel">
                        <xsl:value-of select="@kernel"/>
                    </xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
