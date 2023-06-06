<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 08.xsl
    Created on : 6 de junio de 2023, 8:55
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
                <link type="text/css" rel="stylesheet" href="../src/estilo.css"/>
                <title>08.xsl</title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="@curso"/> DAW Curso 2021/2022
                </h1>
                <table>
                    <tr>
                        <th>Expediente</th>
                        <th>Nombre y Apellidos</th>
                        <th>Calificaciones</th>
                    </tr>
                 <!--   <xsl:if> -->
                        <xsl:for-each select="alumnos/alumno">
                            <tr>
                                <th>
                                    <xsl:value-of select="expediente"/>
                                </th>
                                <th>
                                    <xsl:value-of select="concat(nombre,' ',apellido1,' ',apellido2)"/> 
                                </th>
                           
                                <th> 
                                    <table>
                                        <tr>
                                            <th>Módulo</th>
                                            <th>1ª Evaluación</th>
                                            <th>2ª Evaluación</th>
                                            <th>3ª Evaluación</th>
                                        </tr>
                                        <xsl:for-each select="boletin/calificacion[@expediente=current()/expediente]">
                                            <tr>
                                                <th><xsl:value-of select="document('../data/modulos.xml')//modulo[sigla=current()/@sigla]/nombre/text()"/></th>
                                                <th>
                                                    
                                                </th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </xsl:for-each>
                                        <tr>
                                            <th>Número de aprobados</th>
                                            <th>
                                                <xsl:value-of select="count(//nota[@evalueacion='1' and ../@expediente=current()/expediente and text()>=5])"/>
                                            </th>
                                            <th><xsl:value-of select="count(//nota[@evalueacion='1' and ../@expediente=current()/expediente and text()>=5])"/></th>
                                            <th><xsl:value-of select="count(//nota[@evalueacion='1' and ../@expediente=current()/expediente and text()>=5])"/></th>
                                        </tr>
                                    </table>
                                </th>
                           
                            </tr>
                        </xsl:for-each>
                  <!--  </xsl:if> -->
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
