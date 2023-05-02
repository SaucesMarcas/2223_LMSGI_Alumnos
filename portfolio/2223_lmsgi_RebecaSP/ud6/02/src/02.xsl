<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 18 de abril de 2023, 09:28
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/listatickets">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text> 
        <html>
            <head>
                <meta charset="UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="author" content="Rebeca Sánchez Pérez"/>
		<meta name="description" content="HTML de un listado de tickets basado en los resultados de un xml"/>
		<meta name="Keywords" content="ticket, listado, numero, precio, total, producto, fecha"/>
                <link rel="icon" type="image/png" href="../src/media/favicon.png"/>
                <title>XSLT 02 Rebeca Sánchez Pérez</title>
                <link href="../src/02.css" rel="stylesheet" type="text/css"/>
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
                    <div>Número de tickets: <xsl:value-of select="count(//ticket)"/></div>
                    <div>Total de tickets: <xsl:value-of select="sum(//precio)"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ticket">
        <div>
            <h3>Tickets: <xsl:value-of select="numero"/></h3> <!--tambien se puede hacer con un concat-->
            <table>
                <tr class="lineas">
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
                <xsl:apply-templates select="producto"/>
                <tr class="lineas">
                    <th>Total</th>
                    <th>
                        <xsl:value-of select="total"/>
                    </th>
                </tr>
                <tr id="fecha">
                    <td colspan="2">Fecha del ticket <xsl:value-of select="fecha"/></td>
                </tr>
            </table>
        </div>
    </xsl:template>
    
    <xsl:template match="producto">
        <tr class="lineas">
            <td>
                <xsl:value-of select="nombre"/>
            </td>
            <td>
                <xsl:value-of select="precio"/>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
