<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 25 de abril de 2023, 8:28
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

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
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Rebeca Sánchez Pérez"/>
                <meta name="description" content="HTML de un listado de peliculas basado en los resultados de un xml"/>
                <meta name="Keywords" content="peliculas, puntiaciones, publico, valoracion"/>
                <link rel="icon" type="image/png" href="../src/media/favicon.png"/>
                <title>XSLT 03 Rebeca Sánchez Pérez</title>
                <link href="../src/03.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>Información de películas</h1>
                </header>
                <main>
                    <xsl:apply-templates select="pelicula">
                        <xsl:sort select="publico"/>
                        <xsl:sort select="valoracion/@puntos" data-type="number"/>
                        <xsl:sort select="nombre"/>
                    </xsl:apply-templates>
                </main>
                <footer>
                    <div>Número total de películas <xsl:value-of select="count(//pelicula)"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pelicula">
        <div class="cajas">
            <h2>
                <xsl:value-of select="nombre"/>
            </h2>
            <div>
                <xsl:choose>
                    <xsl:when test="valoracion/@puntos&lt;5">Puntuación: <span class="estrellas">***</span></xsl:when>
                    <xsl:when test="valoracion/@puntos&lt;7">Puntuación: <span class="estrellas">*****</span></xsl:when>
                    <xsl:otherwise>Puntuación: <span class="estrellas">*******</span></xsl:otherwise>
                </xsl:choose>
            </div>
            <div>Dirigida a: <xsl:value-of select="publico"/></div>
        </div>
    </xsl:template>

</xsl:stylesheet>
