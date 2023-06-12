<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : elTiempoAWeb.xsl
    Created on : 8 de junio de 2023, 12:51
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/data">
        <html>
            <head>
                <title>elTiempoAWeb.xsl</title>
                <link href="css/eltiempo.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <xsl:for-each select="locality">
                    <header>
                        El tiempo en <xsl:value-of select="name"/>
                        Pronóstico <xsl:value-of select="count(../day)"/> dias | El tiempo por Tutiempo.net
                    </header>
                </xsl:for-each>
                <table>
                    <tr>
                        <xsl:for-each select="information">
                            <th>Fecha</th>
                            <th colspan="2">Temperatura(<xsl:value-of select="temperature"/>)</th>
                            <th colspan="2">Velocidad(<xsl:value-of select="wind"/>)</th>
                            <th>Humedad(<xsl:value-of select="humidity"/>)</th>
                            <th>
                                <img src="images/sol.png"></img>
                            </th>
                            <th>Fase lunar</th>
                            <th>
                                <img src="images/luna.png"></img>
                            </th>
                        </xsl:for-each>
                    </tr>
                    <xsl:for-each select="day">
                        <tr>
                            <th>
                                <xsl:value-of select="date"/>
                            </th>
                            <th>
                                <span>
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('https://v5i.tutiempo.net/wi/01/50/',icon,'.png')"/>
                                        </xsl:attribute>
                                    </img>
                                </span>
                                <span>
                                    <xsl:value-of select="text"/>
                                </span>
                            </th>
                            <th>
                                <span>
                                    <xsl:value-of select="concat(temperature_max,'ºC')"/>
                                </span>
                                <span>
                                    <xsl:value-of select="concat(temperature_max,'ºC')"/>
                                </span>
                            </th>
                            <th>
                                <span>
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('https://v5i.tutiempo.net/wd/big/black/',icon_wind,'.png')"/>
                                        </xsl:attribute>
                                    </img>
                                </span>
                                <span>
                                    <xsl:value-of select="wind_direction"/>
                                </span>
                            </th>
                            <th>
                                <xsl:value-of select="concat(wind,'km/h')"/>
                            </th>
                            <th>
                                <xsl:value-of select="concat(humidity,'%')"/>
                            </th>
                            <th>
                                <span>
                                    <xsl:value-of select="concat('Salida sol: ',sunrise)"/>
                                </span>
                                <span>
                                    <xsl:value-of select="concat('Puesta sol: ',sunset)"/>
                                </span>
                            </th>
                            <th>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="concat('https://v5i.tutiempo.net/wmi/01/',moon_phases_icon,'.png')"/>
                                    </xsl:attribute>
                                </img>
                            </th>
                            <th>
                                <span>
                                    <xsl:value-of select="concat('Salida luna: ',moonrise)"/>
                                </span>
                                <span>
                                    <xsl:value-of select="concat('Puesta luna: ',moonset)"/>
                                </span>
                            </th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
