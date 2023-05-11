<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : libreria.xsl
    Created on : 18 de mayo de 2021, 13:02
    Updated on : 4 de mayo de 2022
    Author     : daw1
    Description:
        Crear plantillas que se utilizan en la generar páginas HTML
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <!-- Plantilla metaweb de las etiquetas meta de una web-->
    <xsl:template name="metaweb">
        <xsl:param name="titulo"/>
        <xsl:param name="descripcion"/>
        <xsl:param name="autor"/>
    
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="author" content="{$autor}"/>
        <meta name="application-name" content="Portfolio de LMSGI"/>
        <meta name="description">
            <xsl:attribute name="content">
                <xsl:value-of select="$descripcion"/>
            </xsl:attribute>
        </meta>
        <meta name="keywords" content="xslt, xml, html"/>
        <meta name="robots" content="index, follow"/>
        <link rel="icon" href="../../webroot/media/imagen/favicon.ico" type="image/x-icon"/>
        <title>
            <xsl:value-of select="$titulo"/>
        </title>
    </xsl:template>
    
    <!-- Plantilla docTipo del tipo de documento-->
    <xsl:template name="docTipo">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>