<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/peliculas">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="author" content="Carlos García Cachón"/>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="images/favicon-32x32.png"/>
                <meta name="description" content="Practicando con XSLT"/>
                <meta name="keywords" content="XSLT"/>
                <meta name="generator" content="NetBeans"/>
                <meta name="generator" content="60"/>
                <link rel="stylesheet" href="estilo.css"/>
                <title>XSLT 03 Carlos Garcia Cachon</title>
            </head>
            <body>
                <main>
                    <h1>Información de peliculas</h1>
                    
                        <xsl:for-each select="pelicula">
                            <div>
                                <xsl:value-of select="nombre"></xsl:value-of>
                                <xsl:value-of select="concat('Puntuación: ',valoracion/@puntos)"></xsl:value-of>
                                <xsl:value-of select="concat('Dirigida a: ',publico)"></xsl:value-of>
                            </div>
                        </xsl:for-each>
                    
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="concat('Número total de películas: ',count(//pelicula))"></xsl:value-of>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>