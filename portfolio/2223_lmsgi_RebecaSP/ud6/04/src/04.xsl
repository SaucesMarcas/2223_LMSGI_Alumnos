<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 25 de abril de 2023, 18:13
    Author     : Rebeca
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/garaje">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Rebeca Sánchez Pérez"/>
                <meta name="description" content="HTML de un listado de coches basado en los resultados de un xml"/>
                <meta name="Keywords" content="coche, garaje, matricula, modelo, propietario, km"/>
                <link rel="icon" type="image/png" href="../src/media/favicon.png"/>
                <title>XSLT 04 Rebeca Sánchez Pérez</title>
                <link href="../src/04.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Práctica 4</h1>
                    <h2>Información de Garajes</h2>
                </header>
                <main>
                    <xsl:apply-templates select="coches/coche"/>
                    
                </main>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="coches/coche">
        <div>
            <table>
                <tr>
                    <th>Matrícula</th>
                    <th>Reparaciones</th>
                </tr>
                <tr>
                    <td class="matricula">
                        <xsl:value-of select="matricula"/>
                    </td>
                    <td>
                        <xsl:apply-templates select="//reparacion[current()/matricula=matricula]"/>
                        <div class="pieReparaciones">
                            <div>
                                Numero de reparaciones: <xsl:value-of select="count(//reparacion[current()/matricula=matricula])"/>
                            </div>
                            <div>
                                Total Horas: <xsl:value-of select="sum(//reparacion[current()/matricula=matricula]/horas)"/>
                            </div>
                            <div>
                                Total a pagar: <xsl:value-of select="sum(//reparacion[current()/matricula=matricula]/horas)*12"/>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template> 
    <xsl:template match="//reparacion[current()/matricula=matricula]">
        <div>
            <div class="codigo">
                <xsl:value-of select="@codigo"/>  
            </div>
            <ul>
                <li>
                    <xsl:value-of select="descripcion"/>
                </li>
                <li>
                    Fecha de entrada: <xsl:value-of select="fecha_entrada"/>
                </li>
                <li>
                    Fecha de salida: <xsl:value-of select="fecha_salida"/>
                </li>
                <li>
                    <xsl:value-of select="concat(horas,' horas')"/>
                </li>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
