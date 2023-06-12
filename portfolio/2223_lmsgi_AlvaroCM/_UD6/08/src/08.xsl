<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 10 de mayo de 2023, 17:31
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:param name="NumExpediente" select="0"/>
    <xsl:template match="/daw">
        <html>
            <head>
            <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="@curso"/> DAW Curso 2021/2022</h1>
                <table>
                    <tr>
                        <th>Expediente</th>
                        <th>Nombre y Apellidos</th>
                        <th>Calificaciones</th>
                    </tr>
                    <xsl:if test="$NumExpediente=0">
                        <xsl:for-each select="alumnos/alumno">
                            <tr>
                                <td>
                                    <xsl:value-of select="expediente"/>
                                </td>
                                <td>
                                    <xsl:value-of select="concat(nombre/text(),' ',apellido1/text(),' ',apellido2/text())"/>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <th>Módulo</th>
                                            <th>1ª Evaluación</th>
                                            <th>2ª Evaluación</th>
                                            <th>3ª Evaluación</th>
                                        </tr>
                                        <xsl:for-each select="//boletin/calificacion[@expediente=current()/expediente]">
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="document('../data/modulos.xml')//modulo[sigla=current()/@sigla]/nombre/text()"/>
                                                </td>
                                                <xsl:for-each select="nota">
                                                    <td>
                                                        <xsl:choose>
                                                            <xsl:when test="text()!='NP'">
                                                                <xsl:value-of select="text()"/>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                0
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </xsl:for-each>
                                        <tr class="aprobados">
                                            <td>Número de aprobados</td>
                                            <th><xsl:value-of select="count(//nota[@evaluacion='1' and ../@expediente=current()/expediente and text()>=5])"/></th>
                                            <th><xsl:value-of select="count(//nota[@evaluacion='2' and ../@expediente=current()/expediente and text()>=5])"/></th>
                                            <th><xsl:value-of select="count(//nota[@evaluacion='3' and ../@expediente=current()/expediente and text()>=5])"/></th>
                                        </tr>
                                    </table>
                                </td>
                            </tr>   
                        </xsl:for-each> 
                    </xsl:if>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>