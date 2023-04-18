<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/listatickets">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="author" content="Carlos García Cachón"/>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="images/favicon-32x32.png"/>
                <meta name="description" content="Practicando con XSLT"/>
                <meta name="keywords" content="XSLT"/>
                <meta name="generator" content="NetBeans"/>
                <meta name="generator" content="60"/>
                <link rel="stylesheet" href="src/estilo.css"/>
                <title>XSLT 02 Carlos Garcia Cachon</title>
            </head>
            <body>
                <main>
                    <h1>Información de tickets</h1>
                    <h2>Listado de tickets</h2>
                    <div>
                        <xsl:for-each select="ticket">
                            <div>
                                <xsl:value-of select="concat('Tickets: ',numero)"></xsl:value-of>
                            </div>
                            <table>
                                <tr>
                                    <td>
                                        <p>Producto</p>
                                    </td>
                                    <td>
                                        <p>Precio</p>
                                    </td>
                                </tr>
                                <xsl:for-each select="producto">
                                    <tr>
                                        <td> 
                                            <xsl:value-of select="nombre"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="precio"></xsl:value-of>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                                <tr>
                                    <td>
                                        <p>Total</p>
                                    </td>
                                    <td>
                                        <xsl:value-of select="total"></xsl:value-of>
                                    </td>
                                </tr>
                                <tfoot>
                                    <xsl:value-of select="concat('FECHA DEL TICKET','   ',fecha)"></xsl:value-of>
                                </tfoot>
                            </table>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="concat('NÚMERO DE TICKETS: ',count(ticket))"></xsl:value-of>
                    </div>
                    <div>
                        <xsl:value-of select="concat('TOTAL DE TICKETS: ',sum(ticket/total))"></xsl:value-of>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>