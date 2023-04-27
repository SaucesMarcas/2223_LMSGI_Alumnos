<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/garaje">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="author" content="Carlos García Cachón"/>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="../../../webroot/images/favicon.ico"/>
                <meta name="description" content="Practicando con XSLT"/>
                <meta name="keywords" content="XSLT"/>
                <meta name="generator" content="NetBeans"/>
                <meta name="generator" content="60"/>
                <link rel="stylesheet" href="../src/estilo.css"/>
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
                                    <div class="textoMatricula">
                                        <xsl:value-of select="matricula"></xsl:value-of>
                                    </div>
                                </td>
                               <td> 
                                    <xsl:for-each select="//reparaciones/reparacion[matricula=current()/matricula]">
                                        <div class="codigoReparaciones"> <xsl:value-of select="@codigo"></xsl:value-of></div>
                                        <ul>
                                            <li><xsl:value-of select="descripcion"></xsl:value-of></li>
                                            <li><xsl:value-of select="fecha_entrada"></xsl:value-of></li>
                                            <li><xsl:value-of select="fecha_salida"></xsl:value-of></li>
                                            <li><xsl:value-of select="horas"></xsl:value-of></li>
                                        </ul>
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="pies">
                                        <p> <xsl:value-of select="concat('Numero de reparaciones: ',count(//reparaciones/reparacion[matricula=current()/matricula]))"></xsl:value-of></p>
                                        <p><xsl:value-of select="concat('Total horas: ',sum(//reparaciones/reparacion[matricula=current()/matricula]/horas/text()))"></xsl:value-of></p>
                                        <p><xsl:value-of select="concat('Total a pagar: ',12*sum(//reparaciones/reparacion[matricula=current()/matricula]/horas/text()))"></xsl:value-of></p>
                                    </div>
                                </td>
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

</xsl:stylesheet>