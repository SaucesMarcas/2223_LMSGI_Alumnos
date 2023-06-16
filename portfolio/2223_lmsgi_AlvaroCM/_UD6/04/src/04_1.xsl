<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 27 de abril de 2023, 10:01
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/garaje">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="../src/style.css"/>
                <title>04 XSLT Alvaro Cordero</title>
            </head>
            <body>
                <header>
                    <h1>PRACTICA 4</h1>
                    <h1>INFORMACION DE GARAJES</h1>
                </header>
                <main>
                    <table>
                        <tr>
                            <th>Matricula</th> 
                            <th>Reparaciones</th> 
                        </tr>
                       
                        <xsl:for-each select="//coche">
                            <tr>
                                <td>
                                    <xsl:value-of select="matricula/text()"/>
                                </td>
                                <td>
                                    <xsl:value-of select="propietario/text()"/>
                                    <xsl:for-each select="//reparacion[matricula=current()/matricula]">
                                        <ul>
                                            <li>
                                                <xsl:value-of select="descripcion/text()"/>                                               
                                            </li>
                                            <li>
                                                <xsl:value-of select="fecha_entrega/text()"/>
                                            </li>
                                            <li>
                                                <xsl:value-of select="fecha_salida/text()"/>
                                            </li>
                                        </ul>
                                        
                                    </xsl:for-each>
                                </td>
                            </tr>
                                
                        </xsl:for-each>
                            
               
                    </table>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
