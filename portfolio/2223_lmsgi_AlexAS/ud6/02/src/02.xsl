<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl.xsl
    Created on : 18 de abril de 2023, 9:27
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
    <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
    </xsl:text> 
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="author" content="Alex Asensio Sanchez"/>
		<meta name="description" content="Pagina web"/>
                <title>02 XSLT Alex Asensio Sanchez</title>
                <link href="../src/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Informacion de tickets</h1>
                </header>
                <main>
                    <h2>Listado de tickets</h2>

                    <xsl:apply-templates select="ticket">
                        <xsl:sort select="numero" data-type="number" order="descending"/>
                    </xsl:apply-templates>      
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="concat('Numero de tickets ',count(//ticket))"/>
                    </div>
                    <div>
                        <xsl:value-of select="concat('Total de tickets ',sum(//total))"/>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ticket">
        <article>
            <h3><xsl:value-of select="concat('Tickets: ',numero)"/></h3>
            <table>
                <caption><xsl:value-of select="concat('Fecha tickets ',fecha)"/></caption>
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
                <xsl:apply-templates select="producto"/>
                <tfoot>
                    <tr>
                        <th>Total</th>
                        <th><xsl:value-of select="total"/></th>
                        
                    </tr>
                </tfoot>
            </table>
        </article>
    </xsl:template>
    
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
