<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 2AWeb.xsl
    Created on : 15 de junio de 2023, 12:11
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../lib/libreria.xsl"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/datos">
        <html>
            <head>
                <title>Ex05 Victor Manuel Manrique</title>
                <link href="../target/css/estilos.css" type="text/css" rel="stylesheet"/>
            </head>
            <body>
                <nav>
                    <ol>
                        <li>
                            <a href="todo.html">Todo</a>
                        </li>
                        <li>
                            <a href="#">Titulo</a>
                        </li>
                        <li>
                            <a href="#">Autor</a>
                        </li>
                        <li>
                            <a href="#">Editorial</a>
                        </li>
                        <li>
                            <a href="#">Sinopsis</a>
                        </li>
                    </ol>
                </nav>
                
                <div>
                    <xsl:for-each select="//libro">
                        <div>
                            <div>
                                <img src="images/{codigo}.png"/>
                            </div>
                            <div class="informacion">
                                <p>TITULO</p>
                                <xsl:value-of select="titulo"/>
                                <p>EDITORIAL</p>
                                <xsl:value-of select="editorial"/>
                                <p>AUTOR</p>
                                <xsl:value-of select="../autores/autor/nombre"/>
                                <p>IDIOMA</p>
                                <xsl:value-of select="idiomas/idioma"/>
                                <p>PAGINAS</p>
                                <xsl:value-of select="numero_paginas"/>
                                <p>SINOPSIS</p>
                                <xsl:value-of select="sinopsis"/>
                                <p>AÑO DE PUBLICACIÓN</p>
                                <xsl:value-of select="anio_publicacion"/>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
