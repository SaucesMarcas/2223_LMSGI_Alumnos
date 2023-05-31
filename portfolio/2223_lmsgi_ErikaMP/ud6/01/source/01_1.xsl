<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de abril de 2023, 13:04
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
                <title>01 XSLT Erika Martínez Pérez</title>
            </head>
            <body>
                <xsl:for-each select="vivienda">
                    <h1>Información de las viviendas</h1>
                    <xsl:value-of select="concat('Piso: ',piso,' Puerta: ',puerta)"/>
                    <ol>
                        <li>
                            <!-- select="." , select="current()/text()" , select="./text()" -->
                            <xsl:value-of select="vecinos/nombre"/>
                        </li>
                    </ol>
                    <div>
                        <xsl:value-of select="concat('Número de viviendas: ',count(//vivienda))"/>
                    </div>
                    <div>
                        <xsl:value-of select="concat('Número total de vecinos: ',count(//nombre))"/>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
