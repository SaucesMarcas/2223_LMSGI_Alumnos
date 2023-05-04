<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 25 de abril de 2023, 9:39
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="peliculas">
    <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
    </xsl:text> 
        <html>
            <head>
                <title>03 XSLT Alex Asensio Sanchez</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="author" content="Alex Asensio Sanchez"/>
		<meta name="description" content="Pagina web"/>
                <link rel="shortcut icon" type="image/ico" href="favicon.ico"/> 
                <link href="../src/estilos.css" rel="stylesheet" type="text/css"/>
                
            </head>
            <body>
                <header>
                    <h1>Informacion de peliculas</h1>
                </header>
                <main>
                    <xsl:for-each select="pelicula">
                        <xsl:sort select="publico" />
                        <xsl:sort select="valoracion/@puntos" data-type="number"/>
                        <xsl:sort select="nombre" />
                        <div class="content-1">
                            <h3><xsl:value-of select="nombre"/></h3>
                            <div>
                                <xsl:choose>
                                    <xsl:when test="valoracion/@puntos&lt;5">Puntuacion:<span class="naranja">***</span></xsl:when>
                                    <xsl:when test="valoracion/@puntos&lt;7">Puntuacion:<span class="naranja">*****</span></xsl:when>
                                    <xsl:otherwise>Puntuacion:<span class="naranja">*******</span></xsl:otherwise>
                                </xsl:choose>  
                            </div>
                            <div>Dirigida a: <xsl:value-of select="publico"/></div>
                        </div>
                    </xsl:for-each>
                </main>
                <footer>
                    <div>Numero total de peliculas: <xsl:value-of select="count(//pelicula)"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="comment() ">
        <xsl:text xml:space="preserve">
            <xsl:comment>
                <xsl:value-of select="."/>
            </xsl:comment>
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>
