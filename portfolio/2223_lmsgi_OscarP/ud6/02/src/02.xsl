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
            </head>
            <body>
                <header>
                    <h1>Informacion de tickets</h1>
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
                                        <xsl:value-of select="concat('Producto')"/>
                                    </td>
                                    <td></td>
                                    <td>
                                        <xsl:value-of select="concat('Precio')"/>
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
                                    <td><xsl:value-of select="concat('Total')"/></td>
                                    <td></td>
                                    <td></td>
                                    <td><xsl:value-of select="total"/></td>
                                </tr>
                                                                
                            </table>
                            <p><xsl:value-of select="concat('Fecha del ticket ',fecha)"/></p>
                        </xsl:for-each>                        
                    </div>
                    <div>
                        <p><xsl:value-of select="concat('NÚMERO DE TICKETS: ',count(ticket))"/></p>
                        <p><xsl:value-of select="concat('TOTAL DE TICKETS: ',sum(ticket/total))"/></p>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
