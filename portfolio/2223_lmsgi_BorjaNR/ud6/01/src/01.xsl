    <?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
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
    <xsl:template match="/edificio">
         <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
         </xsl:text>
        <html>
            <head>
                <title>01 - BNR</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de las viviendas</h1>
                </header>
                <xsl:apply-templates select="vivienda"/>
                <footer>
                    <div><xsl:value-of select="concat('Número de viviendas ', count(//vivienda))"/></div>
                    <div><xsl:value-of select="concat('Número de vecinos ', count(//nombre))"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
         <h3>Piso:<xsl:value-of select="piso"/>Puerta:<xsl:value-of select="puerta"/></h3>
         <ol>
            <xsl:apply-templates select="vecinos/nombre"/>
         </ol>
    </xsl:template>
    <xsl:template match="vecinos/nombre">
        <li><xsl:value-of select="./text()"/></li>
    </xsl:template>

</xsl:stylesheet>
