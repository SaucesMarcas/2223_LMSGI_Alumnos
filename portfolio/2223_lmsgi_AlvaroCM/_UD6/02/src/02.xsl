<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 18 de abril de 2023, 9:36
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/listatickets">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <link rel="stylesheet" href="style.css"/>
                <title>XSLT 02.Alvaro Cordero</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de tickets</h1>
                </header>
                
            </body>
            <main>
                <div>
                    <h2>Listado de tickets</h2>
                </div>
                <div>
                    <xsl:for-each select="ticket">
                        <table>
                            <h3>
                                <xsl:value-of select="concat('Tickets: ',sum(/numero)"/>
                            </h3>
                            <tr>
                                <td>Producto</td>
                                <td>Precio</td>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="/nombre/text()"/>
                                </td>
                                <td>
                                    <xsl:value-of select="/precio/text()"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha del ticket: 18/04/2023
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </div>
            </main>
            <footer>
                <div>
                    <p>
                        <xsl:value-of select="concat('NUMERO DE TICKETS: ',count(//ticket))"/>
                    </p>
                    <p>
                        <xsl:value-of select="concat('TOTAL DE TICKETS: ',sum(//ticket/total))"/>
                    </p>
                </div>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>
