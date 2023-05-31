<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 24 de abril de 2023, 19:33
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" version="html"/>
    <xsl:template match="/garaje">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
        </xsl:text>
        <xsl:apply-templates select="comment()"/>
        <xsl:text> 
        </xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link rel="stylesheet" type="text/css" href="../target/style.css"/>
                <title>04 XSLT Erika Martínez Pérez</title>
            </head>
            <body>
                <h1>Practica 4 <br/> Información de garajes</h1>
                <xsl:apply-templates select="coches/coche"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="coches/coche">
        <xsl:if test="count(//reparacion[current()/matricula=matricula])&gt;0">
            <div class="tabla">
                <table>
                    <thead>
                        <tr>
                            <th>Matrícula</th>
                            <th>Reparaciones</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <tr>
                            <td id="matricula">
                                <xsl:value-of select="matricula"/>
                            </td>
                            <td>
                                <xsl:apply-templates select="//reparacion[current()/matricula=matricula]"/>
                                <div class="total">
                                    <div>
                                        Numero de reparaciones: <xsl:value-of select="count(//reparacion[current()/matricula=matricula])"/>
                                    </div>
                                    <div>
                                        Total Horas: <xsl:value-of select="sum(//reparacion[current()/matricula=matricula]/horas)"/>
                                    </div>
                                    <div>
                                        Total a pagar <xsl:value-of select="sum(//reparacion[current()/matricula=matricula]/horas)*12"/>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>      
                </table>
            </div>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="//reparacion[current()/matricula=matricula]">
        <div id="descripcion">
            <p>
                <xsl:value-of select="current()/@codigo"/>
            </p>
            <ul>
                <li>
                    <xsl:value-of select="descripcion"/>
                </li>
                <li>
                    <xsl:value-of select="concat('Fecha de entrada: ',fecha_entrada)"/>
                </li>
                <li>
                    <xsl:value-of select="concat('Fecha de salida: ',fecha_salida)"/>
                </li>
                <li>
                    <xsl:value-of select="concat(horas,' horas')"/>
                </li>
            </ul>
        </div>
    </xsl:template>
    
</xsl:stylesheet>
