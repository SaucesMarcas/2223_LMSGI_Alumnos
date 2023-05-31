<?xml version="1.0" encoding="UTF-8"?>


<!--
    Document   : 02.xsl
    Created on : 20 de abril de 2023, 13:09
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
        <html>
            <head>
                <meta charset= "utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="../src/estilos.css"/>
                <title>02 XSLT Victor Manuel Manrique Villarino</title>
            </head>
            <body>
                <header>
                    <h1>Información de tickets</h1>
                </header>
                <main>
                    <h2>Listado de tickets</h2>
                     <xsl:apply-templates select="ticket">
                       <xsl:sort select="numero" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </main>
                <footer>
                    <div>Número de tickets:<xsl:value-of select="count(//ticket)"/></div>
                    <div>Total de tickets:<xsl:value-of select="count(//precio)"/></div>
                </footer>
            </body>          
        </html>
    </xsl:template>
    
 <xsl:template match="ticket">
        <article>
            <h3><xsl:value-of select="concat('Tickets: ',numero)"/></h3>
            <table>
                <caption><xsl:value-of select="concat('Fecha Ticket: ',fecha)"/></caption>     
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
                <xsl:apply-templates select="producto"/>
                <tfoot>
                    <tr>
                        <th>Total:</th>
                        <td> 
                            <xsl:value-of select="total"/>
                        </td>  
                    </tr>
                </tfoot>
            </table>
        </article>
    </xsl:template>
    
    <xsl:template match="producto">
        <article>
            <table>              
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="precio"/></td>
                </tr>
            </table>
        </article>
    </xsl:template>
</xsl:stylesheet>

