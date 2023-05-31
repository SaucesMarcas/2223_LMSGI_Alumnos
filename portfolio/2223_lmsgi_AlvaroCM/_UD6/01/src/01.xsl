<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 18 de abril de 2023, 8:59
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/edificio">
        <html>
            <head>
                <title>XSLT  01.Alvaro Cordero</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de las viviendas</h1>
                </header>
                <main>
                    <div>
                        <xsl:apply-templates select="vivienda"/>
                    </div>
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="concat('Numero de viviendas: ',count(//vivienda))"/>
                    </div>
                    <div>
                        <xsl:value-of select="concat('Numero de vecinos: ',count(//nombre))"/>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
        <h2>
            <xsl:value-of select="concat('Piso ','piso',' Puerta','puerta')"/>
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
