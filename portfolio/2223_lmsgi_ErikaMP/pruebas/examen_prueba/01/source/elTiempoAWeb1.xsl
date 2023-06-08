<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : eltiempo.xslt.xsl
    Created on : 8 de junio de 2023, 12:40
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
                <link rel="stylesheet" type="text/css" href="../target/style.css"/>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="concat('El tiempo en ',locality/name/text())"/></h1>
                    <h2>Pronóstico 7 días | El tiempo por Tutiempo.net</h2>
                </header>
                <table>
                    <thead>
                        <th>Fecha</th>
                        <th colspan="2"><xsl:value-of select="concat('Temperatura',information/temperature/text())"/></th>
                        <th colspan="2"><xsl:value-of select="concat('Velocidad',information/wind/text())"/></th>
                        <th><xsl:value-of select="concat('Humedad',information/humidity/text())"/></th>
                        <th><img src="../../images/sol.png"/></th>
                        <th>Fase Lunas</th>
                        <th><img src="../../images/luna.png"/></th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="day">
                            <tr>
                                <td><xsl:value-of select="date"/></td>
                                <td>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('https://v5i.tutiempo.net/wi/01/50/',icon,'.png')"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="'No encuentro la imagen.'"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </td>
                                <td><xsl:value-of select="concat(temperature_max,../information/temperature/text(),'-',temperature_min,../information/temperature/text())"/></td>
                                <td>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('https://v5i.tutiempo.net/wd/big/black/',icon_wind,'.png')"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="'No encuentro la imagen.'"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </td>
                                <td><xsl:value-of select="concat(wind,../information/wind/text())"/></td>
                                <td><xsl:value-of select="concat(humidity,../information/humidity/text())"/></td>
                                <td><xsl:value-of select="concat('Salida sol: ',sunrise,' Puesta sol: ',sunset)"/></td>
                                <td>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('https://v5i.tutiempo.net/wmi/01/',moon_phases_icon,'.png')"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="'No encuentro la imagen.'"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </td>
                                <td><xsl:value-of select="concat('Salida luna: ',moonrise,' Puesta luna: ',moonset)"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <footer>
                    <p><xsl:value-of select="copyright/text()"/></p>
                    <p>Se autoriza el uso de los datos citando a <a href="https://www.tutiempo.net/">https://www.tutiempo.net</a> como fuente de los mismos.</p>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
