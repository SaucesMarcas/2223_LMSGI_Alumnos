<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 13 de abril de 2023, 13:18
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="listatickets">
        <html>
            <head>
                <title>XSLT 02 Informacion de tickets</title>
            </head>
            <body>
                <header> 
                    <h1>Listado de tickets</h1>
                </header>
                <xsl:for-each select="ticket">
                    <main>
                        <div>
                            <h4>Tickets: <xsl:value-of select="//numero/text()"/></h4> 
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <td>Producto</tr>
                                     <td><xsl:value-of select="//nombre/text()"/></tr>
                                    
                                </tr>
                                <tr>
                                     <td>Precio</td>
                                     <td><xsl:value-of select="//precio/text()"/></td>
                                </tr>
                            </tbody>
                            <footer>
                                <div>
                                    <h4>Fecha del ticket <xsl:value-of select="//fecha/text()"/></h4> 
                                </div>
                            </footer>
                        </table>
                    </main>
                </xsl:for-each>
            </body>
            <footer>
                <div>
                    <xsl:value-of select="concat('NÚMERO DE TICKETS ', count(ticket))"/>
                </div>
                <div>
                    <xsl:value-of select="concat('TOTAL DE TICKETS ', count(//precio))"/>
                </div>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>

