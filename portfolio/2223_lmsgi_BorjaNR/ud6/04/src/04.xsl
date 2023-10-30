<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 27 de abril de 2023, 9:30
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/garaje">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
        </xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>04 - BNR</title>
                <link href="../src/04.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Practica 4 <br/>Información de Garajes</h1>
                </header>
                <main>
                        <xsl:for-each select="coches/coche">
                            <table>
                                <tr class="primeraFila">
                                    <td>Matricula</td>
                                    <td>Reparaciones</td>                             
                                </tr>
                                <tr>
                                    <th rowspan="2"><h4><xsl:value-of select="matricula"/></h4></th>
                                    <td>
                                    <xsl:for-each select="//reparacion[matricula=current()/matricula]">
                                            <div>
                                                <h4><xsl:value-of select="@codigo"/></h4>
                                            </div>
                                            <ul>
                                                <li><xsl:value-of select="descripcion"/></li>
                                                <li>Fecha de entrada: <xsl:value-of select="fecha_entrada"/></li>
                                                <li>Fecha de salida: <xsl:value-of select="fecha_salida"/></li>
                                                <li><xsl:value-of select="horas"/> horas</li>
                                            </ul>
                                    </xsl:for-each>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>Numero de reparaciones :<xsl:value-of select="count(//reparacion[matricula=current()/matricula])"/></div>
                                        <div>Total horas: <xsl:value-of select="sum(//reparacion[matricula=current()/matricula]/horas)"/></div>
                                        <div>Total a pagar: <xsl:value-of select="sum(//reparacion[matricula=current()/matricula]/horas)*12"/></div>
                                    </td>  
                                </tr>
                            </table>
                        </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

