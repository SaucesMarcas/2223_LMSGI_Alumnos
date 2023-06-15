<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 7 de junio de 2023, 9:40
    Author     : amor
    Description: Distribution de software free
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    <xsl:include href="../../lib/libreria.xsl"/>

    <xsl:template match="/software-libre">
        <xsl:call-template name="docTipo"/>
        <html>
            <head>               
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="titulo"  select="concat('Amor Distribución de software ',@tipo)"/>   
                    <xsl:with-param name="descripcion" select="'Listado de distribuciones de sotware libre '"/> 
                    <xsl:with-param name="autor" select="'Amor Rodríguez Navarro'"/>
                </xsl:call-template>  
                <link href="../target/css/estilos.css" type="text/css" rel="stylesheet"/>
            </head>
            <body>
                <header>
                    <img src ="images/logo.jpg"/>
                <h1>
                    <xsl:value-of select="concat('Distribución de software ',@tipo)"/>
                </h1>
                </header>
                <div class="caja">
                    <h2>Lanzamiento de distribuciones</h2>
                    <xsl:for-each select="lanzamientos/lanzamiento">
                        <div class="caja2">                     
                            <figure>
                                <img src="images/{@distribucion}.png"/>
                                <figcaption>
                                    <a href="{//distribucion[@id=current()/@distribucion]/web}">
                                    <xsl:value-of select="//distribucion[@id=current()/@distribucion]/web"/>
                                    </a>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="caja2">
                            <xsl:if test="@escritorio!=''">
                            <figure>
                                <img src="images/{@escritorio}.png"/>
                                <figcaption>
                                    <xsl:value-of select="//escritorio[@id=current()/@escritorio]/web"/>
                                </figcaption>
                            </figure>
                            </xsl:if>
                        </div>
                        <div class="caja2 caja21">
                            <div> 
                                <span class="resaltar">Version:</span> 
                                <xsl:value-of select="@version"/>
                            </div>
                            <div>
                                <span class="resaltar">Año:</span> 
                                <xsl:value-of select="@año"/>
                            </div>
                            <div>
                                <span class="resaltar"> Kernel:</span> 
                                <xsl:value-of select="@kernel"/>
                            </div>
                        </div>
               
                    </xsl:for-each>
                    <div class="fin"/>
                </div>
               
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
