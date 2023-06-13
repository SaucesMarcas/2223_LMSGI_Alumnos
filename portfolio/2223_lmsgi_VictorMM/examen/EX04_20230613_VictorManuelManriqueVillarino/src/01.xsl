<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de junio de 2023, 8:37
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
    <xsl:template match="/software-libre">
        <html>
            <head>
                <title>01.xsl</title>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'examen 13 de junio'"/>
                    <xsl:with-param name="autor" select="'Victor Manuel Manrique'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link href="../target/css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <img src="../target/images/logo.jpg" alt="logo"/>
                    <h2>Distribución de software 
                        <xsl:value-of select="@tipo"/>
                    </h2>
                </header>
                
                <main>
                    <xsl:for-each select="distribuciones">
                        <h3>
                            Lanzamiento de distribuciones
                        </h3>
                        <div class="content-1">
                            <xsl:value-of select="distribucion/nombre"/>
                            <div>
                                <xsl:value-of select="web"/>
                            </div>
                        </div>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
