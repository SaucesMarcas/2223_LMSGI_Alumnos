<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 4AXml.xsl
    Created on : 25 de mayo de 2023, 13:09
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/datos">
        <xsl:element name="libros">
            <xsl:for-each select="//libro[numero_paginas &gt; 100 and anio_publicacion &gt; 1990 and anio_publicacion &lt; 2023]">
                <xsl:element name="libro">
                    <xsl:element name="titulo">
                        <xsl:value-of select="titulo"/>
                    </xsl:element>
                    <xsl:element name="sinopsis">
                        <xsl:value-of select="sinopsis"/>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>        
    </xsl:template>
</xsl:stylesheet>
