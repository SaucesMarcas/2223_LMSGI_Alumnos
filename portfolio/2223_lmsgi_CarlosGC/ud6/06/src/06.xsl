<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:include href="../../lib/libreria.xsl"/>
    <xsl:call-template name="docTipo"/>
    <xsl:template match="/network">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'Crear un form a partir XML'"/>
                    <xsl:with-param name="autor" select="'Carlos Garcia'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link type="text/css" rel="stylesheet" href="../src/06.css"/>
            </head>
            <body>
                <header>       
                </header>
                <main>
                    
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>