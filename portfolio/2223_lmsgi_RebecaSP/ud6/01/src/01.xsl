<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de abril de 2023, 13:08
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/edificio">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text> 
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Rebeca Sánchez Pérez"/>
                <meta name="description" content="HTML de un listado de viviendas basado en los resultados de un xml"/>
                <meta name="Keywords" content="viviendas, vecinos, nombre, puerta"/>
                <link rel="icon" type="image/png" href="../src/media/favicon.png"/>
                <title>XSLT 01 Rebeca Sánchez Pérez</title>
            </head>
            <body>
                <header>
                    <h1>Información de las viviendas</h1>
                </header>
                <main>
                    <div>
                        <xsl:apply-templates select="vivienda"/>
                    </div>
                </main>
                <footer>
                    <p>Número de viviendas: <xsl:value-of select="count(//vivienda)"/></p> <!--tambien se puede usar el concat-->
                    <p>Número total de vecinos: <xsl:value-of select="count(//nombre)"/></p> <!--tambien se puede usar el concat-->
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
        <h2>
            Piso: <xsl:value-of select="piso"/> Puerta: <xsl:value-of select="puerta"/> <!--tambien se puede usar el concat-->
        </h2>
        <ol>
            <xsl:apply-templates select="vecinos/nombre"/>
        </ol>
    </xsl:template>
    
    <xsl:template match="vecinos/nombre">
        <li>
            <xsl:value-of select="./text()"/> <!--current()/text()-->
        </li>
    </xsl:template>
    
</xsl:stylesheet>
