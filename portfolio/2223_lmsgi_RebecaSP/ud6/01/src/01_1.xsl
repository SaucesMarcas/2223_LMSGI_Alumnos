<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01_1.xsl
    Created on : 18 de abril de 2023, 09:27
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
                <title>XSLT 01 Rebeca Sánchez Pérez</title>
            </head>
            <body>
                <header>
                    <h1>Información de las viviendas</h1>
                </header>
                <main>
                    <div>
                        <xsl:for-each select="vivienda">
                            <h2>
                                Piso: <xsl:value-of select="piso"/> Puerta: <xsl:value-of select="puerta"/> <!--tambien se puede usar el concat-->
                            </h2>
                            <ol>
                                <xsl:for-each select="vecinos/nombre">
                                    <li>
                                        <xsl:value-of select="./text()"/> <!--current()/text()-->
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <p>Número de viviendas: <xsl:value-of select="count(//vivienda)"/></p> <!--tambien se puede usar el concat-->
                    <p>Número total de vecinos: <xsl:value-of select="count(//nombre)"/></p> <!--tambien se puede usar el concat-->
                </footer>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
