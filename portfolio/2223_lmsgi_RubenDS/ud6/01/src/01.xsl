<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de abril de 2023, 13:09
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/edificio">
<xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
</xsl:text> 
        <html>
            <head>
                <title>XSLT 01 Victor Manuel Manrique Villarino</title>
            </head>
            <body>
                <header>    
                    <h1>Información de las viviendas</h1>
                </header>
                <main>
                    <section>
                        <header>
                            <xsl:apply-templates select="vivienda"/>
                        </header>
                        <article>
                            <xsl:apply-templates select="vecinos"/>
                        </article>
                        <article>
                            <p>Número de viviendas:</p>
                            <p>Número total de vecinos:</p>
                        </article>
                </section>
                </main>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="vivienda">
        <p>Piso:<xsl:value-of select="piso"/> Puerta:<xsl:value-of select="puerta"/></p>
        <ol><xsl:apply-templates select="vecinos"/></ol>    
    </xsl:template>
    <xsl:template match="vecinos">
       <li><xsl:value-of select="."/></li>
    </xsl:template>

</xsl:stylesheet>
