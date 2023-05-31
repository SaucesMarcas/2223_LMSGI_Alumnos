<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/peliculas">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <xsl:apply-templates select="comment()"/>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="../src/style.css"/>
                <title>XSLT 03.Alvaro Cordero</title>
            </head>
            <body>
                <header>
                    <h1>Informacion de peliculas</h1>
                </header>
                <main>
                    <xsl:for-each select="pelicula">
                        <xsl:sort select="publico"/>
                        <xsl:sort select="nombre"/>
                        <xsl:sort select="valoracion/@puntos" data-type="number"/>
                        <table>
                            <tr>
                                <th>
                                    <xsl:value-of select="nombre"/>
                                </th>
                            </tr>                       
                            <tr>
                                <xsl:if test="valoracion/@puntos &lt;= 5">
                                    <td>Puntuacion: <span>***</span></td>
                                </xsl:if>
                                <xsl:if test="(valoracion/@puntos &gt; 5) and (valoracion/@puntos &lt;= 7)" >
                                    <td>Puntuacion: <span>*****</span></td>
                                </xsl:if>
                                <xsl:if test="valoracion/@puntos &gt; 7">
                                    <td>Puntuacion: <span>*******</span></td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <td>                                
                                    <xsl:value-of select="concat('Dirigida a: ',publico)"/>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </main>
                <footer>
                    <div>
                        <p>
                            <xsl:value-of select="concat('NUMERO TOTAL DE PELICULAS: ',count(//pelicula))"/>
                        </p>
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