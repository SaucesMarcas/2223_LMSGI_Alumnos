<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/datos">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="author" content="Carlos García Cachón"/>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="images/favicon-32x32.png"/>
                <meta name="description" content="XSLT"/>
                <meta name="keywords" content="XSLT"/>
                <meta name="generator" content="NetBeans"/>
                <meta name="generator" content="60"/>
                <link rel="stylesheet" href="../target/css/estilos.css"/>
                <title>EX05 Carlos Garcia Cachon</title>
            </head>
            <body>
                for $x in doc('01')/software-libre/distribuciones/distribucion
return
                <main>
                    <table>
                        <xsl:for-each select="//libros/libro">
                            <tr>
                                <td>
                                    <figure>
                                        <img src="images/{codigo}.png"/>
                                        <figcaption>
                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <div>
                                        <span class="letrasRojas">TITULO :</span><xsl:value-of select="titulo"/>
                                    </div>
                                    <div>
                                        <span class="letrasRojas">EDITORIAL :</span><xsl:value-of select="editorial"/>
                                    </div>
                                    <div>
                                        <span class="letrasRojas">AUTORES :</span><xsl:value-of select="autores/autor/@codigo"/>
                                    </div>
                                    <div>
                                        <span class="letrasRojas">IDIOMAS :</span><xsl:value-of select="idiomas/idioma"/>
                                        <!-- Lo intente poner con este template pero no funciona: <xsl:apply-templates select="Tidiomas"/> -->
                                    </div>
                                    <div>
                                        <span class="letrasRojas">PAGINAS :</span><xsl:value-of select="numero_paginas"/>
                                    </div>
                                    <div>
                                        <span class="letrasRojas">SINOPSIS :</span><xsl:value-of select="sinopsis"/>
                                    </div>
                                    <div>
                                        <span class="letrasRojas">AÑO DE PUBLICACIÓN :</span><xsl:value-of select="anio_publicacion"/> 
                                    </div>                                  
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table> 
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Tidiomas">
        <xsl:for-each select="//libros/libro/idiomas">
            <xsl:value-of select="idioma"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>