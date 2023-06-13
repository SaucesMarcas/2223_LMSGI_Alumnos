<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 13 de mayo de 2023
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/software-libre">
        <xsl:element name="//distribucion">
            <xsl:attribute name="distro">
                <xsl:value-of select="@id"/>
            </xsl:attribute>
        </xsl:element>
        <html>
            <head>
                <title>01 Alvaro </title>
                <link rel="stylesheet" href="../src/style.css"/>
            </head>
            <body>                
                <header>
                    <img src="../target/images/logo.jpg" alt="Linux Mint"/>
                    <h1>
                        <xsl:value-of select="concat('Distribucion de software',' ',@tipo)"/>
                    </h1>
                </header>
                <main>
                    <div class="distros">
                        <table>
                            <xsl:for-each select="//distribuciones/distribucion">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>                                 
                                    </td>
                                </tr> 
                             </xsl:for-each>      
                             <xsl:for-each select="//lanzamiento">
                                 <tr>
                                    <td>
                                        <xsl:value-of select="@escritorio"/>                                 
                                    </td>
                                </tr> 
                             </xsl:for-each>                                                                                                                                                    
                        </table>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>