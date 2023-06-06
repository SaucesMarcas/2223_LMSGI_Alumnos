<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 08.xsl
    Created on : 6 de junio de 2023, 8:53
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:param name="NumExpediente" select="0"/>
    <xsl:template match="/daw">
        <html>
            <head>
                
            </head>
            <body>
                <h1><xsl:value-of select="concat(@curso,'ºDAW Curso 2021/2022')"/></h1>
                <table>
                    <tr>
                        <th>Expediente</th>
                        <th>Nombre y Apellidos</th>
                        <th>Calicaciones</th>
                    </tr>
                    <xsl:if test="$NumExpediente=0">
                        <xsl:for-each select="alumnos/alumno">
                            <tr>
                                <td><xsl:value-of select="expediente"/></td>
                                <td><xsl:value-of select="concat(nombre,' ',apellido1,' ',apellido2)"/></td>
                                <td>
                                    <table>
                                        <tr>
                                            <th>Módulo</th>
                                            <th>1ª Evaluación</th>
                                            <th>2ª Evaluación</th>
                                            <th>3ª Evaluación</th>
                                        </tr>
                                        <xsl:for-each select="//calificacion[@expediente=current()/expediente]">
                                            <tr>
                                                <td><xsl:value-of select="document('../data/modulos.xml')//modulo[sigla=current()/@sigla]/nombre/text()"/></td>
                                                <xsl:for-each select="nota">
                                                    <xsl:choose>
                                                        <xsl:when test="text()!='NP'">
                                                            <td><xsl:value-of select="text()"/></td>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <td><xsl:value-of select="0"/></td>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
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
                    <tr>
                        <td>Erika Martínez Pérez</td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
