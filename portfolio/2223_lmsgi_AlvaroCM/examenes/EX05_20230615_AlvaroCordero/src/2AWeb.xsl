<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05AWeb.xslt
    Created on : 15 de junio de 2023, 11:29
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/datos">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                 <title>EX05 Alvaro Cordero</title>
                 <link href="../target/css/estilos.css" type="text/css" rel="stylesheet"/>
            </head>
            <body>
                <header>
                    <div class="menu">

                        <a href="todo.html" id="enlace">Todo</a>

                        <a href="#">Titulo</a>

                        <a href="#">Autor</a>

                        <a href="#">Editorial</a>

                        <a href="#">Sinopsis</a>
                    </div>
                    
                </header>
                <main>
                    <xsl:for-each select="//libro">
                        <div class="caja">
                            <div class="imagen">
                                <img src="../target/images/{codigo}.png"/>
                            </div>
                            <div class="info">
                                <p>
                                    TITULO:<xsl:value-of select="concat(' ',titulo)"/>
                                </p>
                                <p>
                                    EDITORIAL:<xsl:value-of select="concat(' ',editorial)"/>
                                </p>
                                <p>
                                    AUTORES:<xsl:value-of select="concat(' ',//autor[codigo=current()/autores/autor/@codigo]/nombre)"/>
                                </p>
                                <span class="idiomas">IDIOMAS:</span>
                                <xsl:for-each select="idiomas/idioma">
                                    <span class="idiomas"><xsl:value-of select="concat(' ',./text())"/></span>
                                </xsl:for-each>                           
                                <p>
                                    SINOPSIS:<xsl:value-of select="concat(' ',sinopsis)"/>
                                </p>
                                <p>
                                    AÑO DE PUBLICACION<xsl:value-of select="concat(' ',anio_publicacion)"/>
                                </p>
                            </div>                          
                        </div>
                    
                    </xsl:for-each>
                    
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
