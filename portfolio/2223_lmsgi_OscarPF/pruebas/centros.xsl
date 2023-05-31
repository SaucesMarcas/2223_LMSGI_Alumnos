<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : centros.xsl
    Created on : 2 de Mayo de 2023, 9:18
    Author     : Oscar Pascual Ferrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/alumnos">
        <xsl:element name="centros">
            <xsl:apply-templates select="alumno"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="alumno">
        <xsl:element name="persona">
            <xsl:attribute name="poblacion">
                <xsl:value-of select="count(direccion)"/>
            </xsl:attribute>
            <xsl:value-of select="concat(nombre,' ',apellido)"/>
            <xsl:copy-of select="direccion"/>
        </xsl:element>
    </xsl:template>    
</xsl:stylesheet>
