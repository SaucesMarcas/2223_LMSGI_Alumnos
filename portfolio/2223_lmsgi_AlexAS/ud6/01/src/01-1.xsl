<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01-1.xsl.xsl
    Created on : 18 de abril de 2023, 9:20
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="edificio">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
        </xsl:text> 
        <html>
            <head>
                <title>01 XSLT Alex Asensio Sanchez</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de las viviendas</h1>
                </header>
                <main>
                    <div>
                        <xsl:for-each select="vivienda">
                            <h2>
                                <xsl:value-of select="concat('Numero de viviendas ',count(//vivienda))"/>
                            </h2>
                            <ol>
                                <xsl:for-each></xsl:for-each>
                            </ol>
                        </xsl:for-each>
                    </div>
                </main>
 
