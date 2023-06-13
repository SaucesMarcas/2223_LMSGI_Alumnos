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
    <xsl:template match="/software-libre">
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'Ejercicio 1 del examen 04'"/>
                    <xsl:with-param name="autor" select="'Rebeca Sánchez Pérez'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link href="../target/css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <img src="../target/images/logo.jpg"/>
                    <h1>Distribución de software <xsl:value-of select="@tipo"/></h1>
                </header>
                <main class="main">
                    <h2>Lanzamiento de distribuciones</h2>
                    <table>
                        <xsl:for-each select="lanzamientos/lanzamiento">
                            <tr>
                                <td>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('../target/images/',@distribucion,'.png')"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="'Imagen no encontrada'"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                    <div>
                                        <xsl:element name="a">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="//distribucion[@id=current()/@distribucion]/web/text()"/>
                                            </xsl:attribute>
                                            <xsl:value-of select="//distribucion[@id=current()/@distribucion]/web/text()"/>
                                        </xsl:element>
                                    </div>
                                </td>
                                <td>
                                    <xsl:if test="@escritorio!=''">
                                        <xsl:element name="img">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="concat('../target/images/',@escritorio,'.png')"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="'Imagen no encontrada'"/>
                                            </xsl:attribute>
                                        </xsl:element>
                                        <div>
                                            <xsl:element name="a">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="//escritorio[@id=current()/@escritorio]/web/text()"/>
                                            </xsl:attribute>
                                            <xsl:value-of select="//escritorio[@id=current()/@escritorio]/web/text()"/>
                                        </xsl:element>
                                        </div>
                                    </xsl:if>
                                </td>
                                <td>
                                    <div><b>Version:</b> <xsl:value-of select="@version"/></div>
                                    <div><b>Año:</b> <xsl:value-of select="@año"/></div>
                                    <div><b>Kernel:</b> <xsl:value-of select="@kernel"/></div>
                                </td>
                            </tr>
                        </xsl:for-each>    
                    </table>
                </main>    
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
