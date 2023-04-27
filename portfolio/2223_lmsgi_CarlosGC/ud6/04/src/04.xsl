<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="garaje">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="author" content="Carlos García Cachón"/>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="images/favicon-32x32.png"/>
                <meta name="description" content="Practicando con XSLT"/>
                <meta name="keywords" content="XSLT"/>
                <meta name="generator" content="NetBeans"/>
                <meta name="generator" content="60"/>
                <link rel="stylesheet" href="/src/estilo.css"/>
                <title>XSLT 04 Carlos Garcia Cachon</title>
            </head>
            <body>
                <header>
                    <h1>Practica 4<br/>Informacion de Garajes</h1>
                </header>
                <main>
                    <xsl:for-each select="coches/coche">
                        <div>
                        <table>
                            <tr class="cabeceras">
                                <td>
                                    <p>Matricula</p>
                                </td>
                                <td>
                                    <p>Reparaciones</p>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <xsl:value-of select="matricula"></xsl:value-of>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><xsl:apply-templates select="codigoReparacion"/></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    </xsl:for-each>
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="codigoReparacion">
        <xsl:for-each select="reparaciones/reparacion">
            <p>
                <xsl:value-of select="reparacion/@codigo"></xsl:value-of>
            </p>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>