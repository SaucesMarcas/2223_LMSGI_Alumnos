<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 18 de abril de 2023, 9:16
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:import href="../../lib/libreria.xsl"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/peliculas">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
        </xsl:text>
        <xsl:apply-templates select="comment()"/>
        <xsl:text> 
        </xsl:text> 
        <html>
            <head>
		<meta charset="UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link rel="stylesheet" type="text/css" href="../target/style.css"/>
                <title>03 XSLT Erika Martínez Pérez</title>
            </head>
            <body>
                <header>
                    <h1>Información de películas</h1>
                </header>
                <main>
                    <xsl:for-each select="pelicula">
                        <xsl:sort select="publico" data-type="text"/>
                        <xsl:sort select="valoracion/@puntos" data-type="number"/>
                        <xsl:sort select="nombre" data-type="text"/>
                        <div class="content-1">
                            <h3><xsl:value-of select="nombre"/></h3>
                            <div>
                                <xsl:choose>
                                    <xsl:when test="valoracion/@puntos&lt;5">
                                        <p>Puntación:<span>***</span></p>
                                    </xsl:when>
                                    <xsl:when test="valoracion/@puntos&lt;7">
                                        <p>Puntación:<span>*****</span></p>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <p>Puntación:<span>*******</span></p>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                            <p>Dirigido a: <xsl:value-of select="publico"/></p>
                        </div>
                    </xsl:for-each>
                </main>
                <footer>
                    <div><strong>Número total de películas: <xsl:value-of select="count(//pelicula)"/></strong></div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <!-- <xsl:template match="comment()">
        <xsl:text xml:space="preserve">
        <xsl:comment>
            <xsl:value-of select="."/>
        </xsl:comment>
        </xsl:text>
    </xsl:template> -->

</xsl:stylesheet>
