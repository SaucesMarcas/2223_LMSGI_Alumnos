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

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/software-libre">
        <html>
            <head>
                <title>01.xsl</title>
                <link href="../target/css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <img src="../target/images/logo.jpg"/>
                    <h1>Distribución de software <xsl:value-of select="@tipo"/></h1>
                </header>
                <table>
                    <div>Lanzamientos de distribuciones</div>
                    <xsl:for-each select="lanzamientos/lanzamiento">
                        <tr>
                            <th>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="concat('../target/images/',@distribucion,'.png')"/>
                                    </xsl:attribute>
                                </img>
                                    <div>
                                        <xsl:for-each select="//distribuciones/distribucion[@id=current()/distribucion]">
                                            <xsl:value-of select="web"/>
                                        </xsl:for-each>
                                    </div>
                            </th>
                            <th>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="concat('../target/images/',@escritorio,'.png')"/>
                                    </xsl:attribute>
                                </img>
                            </th>
                            <th>
                                <span>
                                    <xsl:value-of select="concat('Version:',@version)"/>
                                </span>
                                <span>
                                    <xsl:value-of select="concat('Año:',@año)"/>
                                </span>
                                <span>
                                    <xsl:value-of select="concat('Kernel',@kernel)"/>
                                </span>
                            </th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
