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
                
            </head>
            <body>
                <main>
                    <h1>Informacion de las viviendas</h1>
                    
                    <xsl:for-each select="//vivienda">
                        <p>
                            <xsl:value-of select="concat(' Puerta: ',puerta, ' Piso: ',piso)"/>
                        </p>
                        <xsl:for-each select="//vecinos/nombre">
                            <ul>
                                <li>
                                     <xsl:value-of select="./text()"/>
                                </li>
                            </ul>
                           
                        </xsl:for-each>
                            
                    </xsl:for-each>
                   
                   
                    
                   
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
