<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de junio de 2023, 8:41
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
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;
         </xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>PREGUNTA1</title>
                <link href="../target/css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <img src="../target/images/logo.jpg"/>
                    <h2>Distribución de software Linux</h2>
                </header>
                <main>
                    <div class="div_main">
                        <h3>Lanzamiento de distribuciones</h3>
                        <xsl:for-each select="lanzamientos/lanzamiento">
                            <div>
                               <!-- <xsl:value-of select="concat('../target/images',@distribucion,'.png')"/>-->
                               <img src="{concat('../target/images',@distribucion,'.png')}"/>
                               <xsl:value-of select="//distribuciones/distribucion/nombre/text()"/>
                                <div>
                                    <xsl:value-of select="//distribuciones/distribucion/web/text()"/>
                                </div>
                            </div>
                            <div>
                                <xsl:value-of select="//escritorios/escritorio/nombre/text()"/>
                                <div>
                                    <xsl:value-of select="//escritorios/escritorio/web/text()"/>
                                </div>
                            </div>
                            <div>
                                <xsl:value-of select="concat('Version: ',//lanzamiento/@version)"/>
                                <xsl:value-of select="concat('Año: ',//lanzamiento/@año)"/>
                                <xsl:value-of select="concat('Kernel: ',//lanzamiento/@kernel)"/>
                            </div>
                        </xsl:for-each>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
