<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 27 de abril de 2023, 12:28
    Author     : Oscar Pascual Ferrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/garaje">
        <html>
            <head>
                <title>04 XSLT Oscar Pascual Ferrero</title>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="../../../webroot/media/images/favicon.ico"/>
                <link href="../src/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Practica 4<br/>Información de Garaje</h1>
                </header>
                <main>
                    <xsl:for-each select="coches/coche">
                        <div>
                            <table>
                                <tr class="cabeceras">
                                    <td>
                                        <p>Matricula</p>
                                    </td>
                                    <td>
                                        <p>Reparaciones</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" class="bold">
                                        <xsl:value-of select="matricula"/>
                                    </td>
                                    <td>
                                        <xsl:for-each select="//reparaciones/reparacion[matricula=current()/matricula]">
                                            <p class="bold">
                                                <xsl:value-of select="@codigo"/>
                                            </p>
                                           <ul>
                                               <li><xsl:value-of select="descripcion"/></li>
                                               <li>Fecha de entrada: <xsl:value-of select="fecha_entrada"/></li>
                                               <li>Fecha de salida: <xsl:value-of select="fecha_salida"/></li>
                                               <li><xsl:value-of select="horas"/></li>
                                           </ul>                                           
                                        </xsl:for-each>                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="total">
                                        <p>Numero de reparaciones: <xsl:value-of select="count(//reparaciones/reparacion[matricula=current()/matricula])"/></p>
                                        <p>Total Horas: <xsl:value-of select="sum(//reparaciones/reparacion[matricula=current()/matricula]/horas/text())"/></p>
                                        <p>Total a pagar: <xsl:value-of select="12*sum(//reparaciones/reparacion[matricula=current()/matricula]/horas/text())"/></p>
                                    </td>                                    
                                </tr>
                            </table>
                        </div>
                    </xsl:for-each>
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
