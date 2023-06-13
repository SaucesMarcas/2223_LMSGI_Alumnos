<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/software-libre">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <link type="text/css" rel="stylesheet" href="../target/css/estilos.css"/>
                <title>XSLT 01 Carlos Garcia Cachon</title>
            </head>
            <body>
                <header>
                    <img src="../target/images/logo.jpg" alt="Logo_Linux"></img>
                    <h1>Distribución de software Linux</h1>
                </header>
                <main>
                    <table>
                        <tr>
                            <th>Lanzamiento de distribuciones</th>
                        </tr>              
                        <xsl:for-each select="//lanzamientos/lanzamiento">
                            <tr>
                                <td><img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('../target/images/',@distribucion,'.png')"/>
                                        </xsl:attribute>
                                        </img></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>