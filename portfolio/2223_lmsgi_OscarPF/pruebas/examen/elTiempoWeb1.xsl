<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : elTiempoWeb1.xsl
    Created on : 8 de junio de 2023, 12:45
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="//locality/name/text()"/></title>
                <link rel="stylesheet" href="css/style.css"></link>
            </head>
            <body>
                <header>
                    <h1>El tiempo en <xsl:value-of select="//locality/name/text()"/></h1>
                    <h2>Pronóstico <xsl:value-of select="count(//day)"/> días | El tiempo por Tutiempo.net</h2>
                </header>
                <main>
                    <table>
                        <tr>
                            <td>Fecha</td>
                            <td colspan="2">Temperatura (<xsl:value-of select="//information/temperature/text()"/>)</td>
                            <td colspan="2">Velocidad (<xsl:value-of select="//information/wind/text()"/>)</td>
                            <td>Humedad (<xsl:value-of select="//information/humidity/text()"/>)</td>
                            <td>
                                <img src="images/sol.png"/>
                            </td>
                            <td>Fase lunar</td>
                            <td>
                                <img src="images/luna.png"/>
                            </td>
                        </tr>
                        <xsl:for-each select="//day">
                            <tr>
                                <td>
                                    <xsl:value-of select="date/text()"/>
                                </td>
                                <td>
                                    <div>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="concat('https://v5i.tutiempo.net/wi/01/50/',icon/text())"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                    <div>
                                        <xsl:value-of select="text/text()"/>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <xsl:value-of select="temperature_max/text()"/>ºC
                                    </div>
                                    <div>
                                        <xsl:value-of select="temperature_min/text()"/>ºC
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="concat('https://v5i.tutiempo.net/wd/big/black/',icon_wind/text())"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                    <div>
                                        <xsl:value-of select="wind_direction/text()"/>
                                    </div>
                                </td>
                                <td>
                                    <xsl:value-of select="wind/text()"/>km/h</td>
                                <td>
                                    <xsl:value-of select="humidity/text()"/>%</td>
                                <td>
                                    <div>
                                        Salida sol: <xsl:value-of select="sunrise/text()"/>
                                    </div>
                                    <div>
                                        Puesta sol: <xsl:value-of select="sunset/text()"/>
                                    </div>
                                </td>
                                <td>
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('https://v5i.tutiempo.net/wmi/01/',moon_phases_icon/text())"/>
                                        </xsl:attribute>
                                    </img>
                                </td>
                                <td>
                                    <div>
                                        Salida luna: <xsl:value-of select="moonrise/text()"/>
                                    </div>
                                    <div>
                                        Puesta luna: <xsl:value-of select="moonset/text()"/>
                                    </div>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="//copyright/text()"/>
                    </div>
                    <div>
                        <xsl:value-of select="//use/text()"/>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
