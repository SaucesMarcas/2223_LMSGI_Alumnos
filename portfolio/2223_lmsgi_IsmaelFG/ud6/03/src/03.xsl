<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 25 de abril de 2023, 9:03
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
        <html>
                <xsl:apply-templates select="comment()"/>
            <head>
                <meta charset="UTF-8"/>
                <title>03-BNR</title>
                <link href="../src/03.css" rel="stylesheet" type="text/css"/>
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
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </h3> 
                            <div>
                                <xsl:choose>
                                    <xsl:when test="valoracion/@puntos&lt;5">Puntuación:<span class="naranja" >***</span></xsl:when>
                                    <xsl:when test="valoracion/@puntos&lt;7">Puntuación:<span class="naranja" >*****</span></xsl:when>
                                    <xsl:otherwise>Puntuación:<span class="naranja" >********</span></xsl:otherwise>
                                </xsl:choose>
                            </div>
                            <div>
                                Dirigida a:<xsl:value-of select="publico"/>
                            </div>
                        </div>                        
                    </xsl:for-each>
                </main>
                <footer>
                    <div>
                        Número total de peliculas: <xsl:value-of select="count(//pelicula)"></xsl:value-of>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="comment()">
        <xsl:text xml:space="preserve">
        <xsl:comment>
            <xsl:value-of select="."/>
        </xsl:comment>
        </xsl:text>
    </xsl:template>

</xsl:stylesheet>
