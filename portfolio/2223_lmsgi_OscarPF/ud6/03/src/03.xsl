<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 25 de abril de 2023, 9:04
    Author     : Oscar Pascual Ferrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:apply-templates select="comment()"/>
    
    <xsl:template match="/peliculas">
        <html>
            <head>
                <title>03 XSLT Oscar Pascual Ferrero</title>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="../../../webroot/media/images/favicon.ico"/>
                <link href="../src/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Información de peliculas</h1>
                </header>
                <main>
                    <xsl:for-each select="pelicula">
                        <xsl:sort select="publico"/>
                        <xsl:sort select="valoracion/@puntos" data-type="number"/>
                        <xsl:sort select="nombre"/>
                        
                        <div class="content-1">
                            <h3>
                                <xsl:value-of select="nombre"/>
                            </h3>
                            <div>
                                <xsl:choose>
                                    <xsl:when test="valoracion/@puntos&lt;5">Puntuacion: <span class="naranja">***</span></xsl:when>
                                    <xsl:when test="valoracion/@puntos&lt;7">Puntuacion: <span class="naranja">*****</span></xsl:when>
                                    <xsl:otherwise>Puntuacion: <span class="naranja">*******</span></xsl:otherwise>
                                </xsl:choose>
                            </div>
                            <div>
                                <xsl:value-of select="concat('Dirigida a: ',publico)"/>
                            </div>
                        </div>
                    </xsl:for-each>
                </main>
                <footer>
                    <div>Número total de peliculas: <xsl:value-of select="count(//pelicula)"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="comment()">
        <xsl:text>
            <xsl:comment>
                <xsl:value-of select="."/>
            </xsl:comment>
        </xsl:text>
        <xsl:text>
            
        </xsl:text>
    </xsl:template>

</xsl:stylesheet>
