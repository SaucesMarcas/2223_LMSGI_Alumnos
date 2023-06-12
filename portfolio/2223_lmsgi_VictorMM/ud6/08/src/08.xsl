<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 9 de mayo de 2023, 9:34
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:param name="NumExpediente" select="0"/>
    <xsl:template match="/daw">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Rebeca Sánchez Pérez"/>
                <meta name="description" content="HTML de una tabla con el expediente y las notas de los alumnos por evaluacion"/>
                <meta name="Keywords" content="expediente, alumnos, notas, evaluacion, modulo"/>
                <link rel="icon" type="image/png" href="../src/media/favicon.png"/>
                <title>XSLT 08 Victor Manuel Manrique Villarino</title>
                <link href="../src/08.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="@curso"/>º DAW Curso 2021/2022</h1>
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
                                        <tr>
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