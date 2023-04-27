<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl.xsl
    Created on : 27 de abril de 2023, 12:35
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
                <title>04 XSLT Alex Asensio Sanchez</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="author" content="Alex Asensio Sanchez"/>
		<meta name="description" content="Pagina web"/>
                <link rel="shortcut icon" type="image/ico" href="favicon.ico"/> 
                <link href="../src/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Practica 4
                    Informacion de garages</h1>
                </header>
                <main>                    
                    <xsl:for-each select="coches/coche">
                        <table>
                            <tr>
                                <th>Matricula</th>
                                <th>Reparaciones</th>
                            </tr>
                            <tr>
                                <td rowspan="2"><xsl:value-of select="matricula"/></td>
                                <td></td>                                                                    
                            </tr>
                            <tr>
                                <td>
                                    <div>Total de reparaciones: <xsl:value-of select="count(//reparacion[matricula=current()/matricula])"/></div>
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
