<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : examen.xsl
    Created on : 27 de abril de 2023, 12:28
    Author     : Oscar Pepinillo Pascual Ferrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../../lib/libreria.xsl"/>
    <xsl:param name="corregido" select="'no'"/>
    <xsl:template match="/examen">
        <xsl:call-template name="docTipo"/>
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                    <xsl:with-param name="descripcion" select="'Crea un formulario a partir de XML'"/>
                    <xsl:with-param name="autor" select="'Oscar Pascual Ferrero'"/>
                </xsl:call-template>
                <link href="../src/examen.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="//nombreCiclo"/>
                    </h1>
                    <h2>
                        <xsl:value-of select="//nombreModulo"/>
                    </h2>
                    <h3>
                        <xsl:value-of select="concat('Fecha: ',//dia,' de ',document('../data/meses.xml')/meses/mes[@id=current()//mes]/text(),' de ',//anyo)"/>
                    </h3>
                </header>
                <main> 
                    <form method="get" action="#enviarExamen.php">
                        <div class="grey">
                            <xsl-for-each select="//pregunta">
                                <div class="pregunta">
                                    <div class="bold"><xsl:value-of select="concat(//@id,' .- ',//enunciado)"/></div>
                                </div>
                                <div class="respuesta">
                                    <xsl:apply-templates select="respuestas/respuesta">
                                        <xsl:with-param name="idPregunta" select="current()/@id"/>
                                    </xsl:apply-templates>
                                </div>
                            </xsl-for-each>
                        </div>
                    </form>                   
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="respuestas/respuesta">
        <xsl:param name="idPregunta"/>
        
        <div><xsl:value-of select="$idPregunta"/></div>
    </xsl:template>

</xsl:stylesheet>
