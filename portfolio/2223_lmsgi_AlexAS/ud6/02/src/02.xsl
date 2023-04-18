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
                <title>02 XSLT Alex Asensio Sanchez</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de tickets</h1>
                </header>
                <main>
                    <div>
                        <h2>Listado de tickets</h2>
                    </div>

                    <div>
                        <xsl:apply-templates select="ticket"/>
                    </div>
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
        <table>
            <thead>
                <xsl:value-of select="concat('Tickets: ',numero)"/>
            </thead>  
            <tbody>
                <xsl:value-of select="./text()"/>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>
