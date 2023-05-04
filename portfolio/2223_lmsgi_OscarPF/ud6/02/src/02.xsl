<?xml version="1.0" encoding="UTF-8"?>


<!--
    Document   : 02.xsl
    Created on : 18 de abril de 2023, 9:30
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/listatickets">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <title>02 XSLT Oscar Pascual Ferrero</title>
                <link href="../src/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Información de tickets</h1>
                </header>
                <main>
                    <h2>Listado de tickets</h2>
                    <div>
                        <xsl:for-each select="ticket">
                            <h3>
                                <xsl:value-of select="concat('Tickets: ',numero)"/>
                            </h3>
                            <table>
                                <tr>
                                    <td></td>
                                    <td>
                                        <p id="b">Producto</p>
                                    </td>
                                    <td></td>
                                    <td>
                                        <p id="b">Precio</p>
                                    </td>
                                </tr>
                                
                                <xsl:for-each select="producto">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                        </td>
                                        <td></td>
                                        <td>
                                            <xsl:value-of select="precio"/>
                                        </td>
                                        <td></td>
                                    </tr>
                                </xsl:for-each>
                                
                                <tr>
                                    <td></td>
                                    <td><p id="b">Total</p></td>
                                    <td></td>
                                    <td><p id="b"><xsl:value-of select="total"/></p></td>
                                </tr>
                                                                
                            </table>
                            <p id="fecha"><xsl:value-of select="concat('Fecha del ticket ',fecha)"/></p>
                        </xsl:for-each>                        
                    </div>                    
                </main>
                <footer>
                    <div>NÚMERO DE TICKETS: <xsl:value-of select="count(ticket)"/></div>
                    <div>TOTAL DE TICKETS: <xsl:value-of select="sum(ticket/total)"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
