<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de abril de 2023, 13:18
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
        <html>
            <head>
                <title>XSLT 01 Informacion de viviendas</title>
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
                    <div><xsl:value-of select="concat('Número de viviendas ', count(//vivienda))"/></div>
                    <div><xsl:value-of select="concat('Número de vecinos ', count(//nombre))"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
        <h2>
            <xsl:value-of select="concat('Piso',piso,' Puerta',puerta)"/>
        </h2>
        <ol>
            <xsl:apply-templates select="vecinos/nombre"/>
        </ol>
    </xsl:template>
    <xsl:template match="vecinos/nombre">
        <li>
            <xsl:value-of select="./text()"/>
        </li>
    </xsl:template>
</xsl:stylesheet>

