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

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/listatickets">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text> 
        <html>
            <head>
                <title>XSLT 02 Rebeca Sánchez Pérez</title>
                <link href="../src/02.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Información de tickets</h1>
                </header>
                <main>
                    <h2>Listado de tickets</h2>
                    <xsl:apply-templates select="ticket"/>
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
            <h3>Tickets: <xsl:value-of select="numero"/></h3>
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
