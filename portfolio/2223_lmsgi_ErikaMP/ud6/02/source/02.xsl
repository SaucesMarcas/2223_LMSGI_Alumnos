<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 18 de abril de 2023, 9:16
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
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
</xsl:text> 
        <html>
            <head>
                <title>02 XSLT Erika Martínez Pérez</title>
            </head>
            <body>
                <main>
                    <h1>Listado de tickets</h1>
                    <div>
                        <xsl:apply-templates select="ticket"/>
                    </div>
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="concat('Número de tickets: ',count(//ticket))"/>
                    </div>
                    <div>
                        <xsl:value-of select="concat('Número de tickets: ',sum(//precio))"/> 
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ticket">
        <h2>
            <xsl:value-of select="concat('Tickets: ',numero)"/>
        </h2>
        <table>
            <tr>
                <th></th>
                <th>Producto</th>
                <th></th> 
                <th>Precio</th> 
            </tr>
            <tr>
                <xsl:apply-templates select="producto"/>
            </tr>
        </table>
    </xsl:template>
    
    <xsl:template match="producto">
        <td>
            <xsl:value-of select="nombre"/>
        </td>
        <td>
            <xsl:value-of select="precio"/> 
        </td>
        <div>
            <xsl:apply-templates select="ticket/fecha"/>
        </div>
    </xsl:template>
    
    <xsl:template match="ticket/fecha">
        <xsl:value-of select="concat('Fecha del ticket: ',./text())"/>
    </xsl:template>

</xsl:stylesheet>
