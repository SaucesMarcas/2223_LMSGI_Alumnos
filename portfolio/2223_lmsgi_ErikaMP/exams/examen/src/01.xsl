<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de junio de 2023, 9:16
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
                <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
                <title>01.xsl</title>
            </head>
            <body>
                <header>
                    <img src="../target/images/logo.jpg"/>
                    <h1>Distribución de software <xsl:value-of select="@tipo"/></h1>
                </header>
                <table>
                    <th colspan="3">Lanzamiento de distribuciones</th>
                    <xsl:for-each select="lanzamientos/lanzamiento">
                        <tr>
                            <td>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="concat('../target/images/',@distribucion,'.png')"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <div>
                                    <p>
                                        <xsl:value-of select="//distribucion/web"/>
                                    </p>
                                </div>
                            </td>
                            <td>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="concat('../target/images/',@escritorio,'.png')"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <div>
                                    <p>
                                        
                                        <xsl:value-of select="//escritorio/web"/>
                                    </p>
                                </div>
                            </td>
                            <td>
                                <p><xsl:value-of select="concat('Version:',@version)"/></p>
                                <p><xsl:value-of select="concat('Año:',@año)"/></p>
                                <p><xsl:value-of select="concat('Kernel:',@kernel)"/></p>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
