<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl.xsl
    Created on : 14 de junio de 2023, 15:34
    Author     : Koke
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/examen">
        <html>
            <head>
                <title>TAREA 6 Alvaro Cordero</title>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="//nombreCiclo/text()"/>
                    </h1>
                    <h2> 
                        <xsl:value-of select="//nombreModulo/text()"/>
                    </h2>
                    <h3>
                        <xsl:value-of select="concat('Fecha: ',//fecha/dia, ' de ', //fecha/mes, ' de ', //fecha/anyo)"/>
                    </h3>
                </header>
                <main>
                    <form>
                        <xsl:for-each select="//pregunta">
                            <label>
                                <xsl:value-of select="enunciado"/>
                            </label>
                            <br></br>
                            <label>
                                <br></br>
                                <xsl:for-each select="//respuestas">
                                    <br></br>
                                     <xsl:value-of select="respuesta"/>
                                     <br></br>
                                </xsl:for-each>
                            </label>
                        </xsl:for-each>                 
                    </form>
                </main>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="respuestas/respuesta">
        <xsl:param name="idPregunta"/>
        <label>
            <xsl:attribute name="for">
                <xsl:value-of select="concat('id',$idPregunta,position())"/>
            </xsl:attribute>
            <input type="radio">
                <xsl:attribute name="name">
                    <xsl:value-of select="concat('var',$idPregunta)"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="concat('var',$idPregunta)"/>
                </xsl:attribute>
                <xsl:attribute name="value">
                    <xsl:value-of select="position()"/>
                </xsl:attribute> 
                <xsl:if test="$corregido!='no'">
                    <xsl:attribute name="disabled"/>
                </xsl:if>
                <xsl:if test="@correcta='correcta'">
                    <xsl:attribute name="checked"/>
                </xsl:if> 
            </input>
            <xsl:value-of select="./text()"/>
        </label>
    </xsl:template>

</xsl:stylesheet>
