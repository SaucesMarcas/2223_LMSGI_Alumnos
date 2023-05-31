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
                    <xsl:for-each select="coches/coche">
                        <table>
                            <xsl:for-each select="//reparacion[matricula=current()/matricula]">
                                <tr>
                                    <th>Matricula </th>
                                    <th>Reparaciones</th> 
                                </tr>
                                <tr>
                                    <td rowspan="2" class="matricula">
                                        <xsl:value-of select="matricula"/>
                                    </td>
                                    <td class="reparacion">
                                        <xsl:value-of select="//reparacion/@codigo"/>
                                        <ul class="reparaciones">
                                            <li>
                                                <xsl:value-of select="//reparacion/descripcion"/>
                                            </li>
                                            <li>
                                                <xsl:value-of select="//reparacion/fecha_entrada"/>
                                            </li>
                                            <li>
                                                <xsl:value-of select="//reparacion/fecha_salida"/>
                                            </li>
                                             <li>
                                                <xsl:value-of select="//reparacion/horas"/>
                                            </li>
                                        </ul>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="datos">
                                        <ul class="datos_coches">
                                            <li> 
                                                <xsl:value-of select="concat('Numero de reparaciones: ',count(//reparacion[matricula=current()/matricula]))"/>
                                            </li>
                                            <li>
                                                <xsl:value-of select="concat('Total horas: ',sum(//reparacion[matricula=current()/matricula]/horas/text()))"/>
                                            </li>
                                            <li>
                                                <xsl:value-of select="concat('Total a pagar: ',12*sum(//reparacion[matricula=current()/matricula]/horas/text()))"/> 
                                            </li>
                                        </ul>                                        
                                       
                                        
                                        
                                    </td>
                                    
                                </tr>
                            </xsl:for-each>
                        </table>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
