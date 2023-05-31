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
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="../src/style.css"/>
                <title>XSLT 02.Alvaro Cordero</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de tickets</h1>
                </header>
            
                <main>
                    <div>
                        <h2>Listado de tickets</h2>
                    </div>
                    <article>
                        <xsl:for-each select="ticket">
                            <h3>
                                <xsl:value-of select="concat('Tickets: ',numero)"/>
                            </h3>
                            <table>
                                <caption>
                                    <xsl:value-of select="concat('Fecha tickets: ',fecha)"/>
                                </caption>
                                <tr>
                                    <th>Producto</th>
                                    <th>Precio</th>
                                </tr>
                                <xsl:for-each select="producto">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="precio"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                                <tr>
                                    <th>Total</th>
                                    <td>
                                        <xsl:value-of select="total"/>
                                    </td>
                                </tr>
                            </table>
                        </xsl:for-each>
                    </article>
                </main>
            </body>
            <footer>
                <div>
                    <p>
                        <xsl:value-of select="concat('NUMERO DE TICKETS: ',count(//ticket))"/>
                    </p>
                    <p>
                        <xsl:value-of select="concat('TOTAL DE TICKETS: ',sum(//precio))"/>
                    </p>
                </div>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>
