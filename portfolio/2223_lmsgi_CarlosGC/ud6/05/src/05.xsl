<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../../lib/libreria.xsl"/>
    <xsl:param name="corregido" select="'no'"/>
    <xsl:call-template name="docTipo"/>
    <xsl:template match="/examen">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'Crear un form a partir XML'"/>
                    <xsl:with-param name="autor" select="'Carlos Garcia'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link type="text/css" rel="stylesheet" href="../src/examen.css"/>
                <title>XSLT 05 Carlos Garcia Cachon</title>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2><xsl:value-of select="datos/nombreModulo"/></h2>
                    <h3><xsl:value-of select="concat('Fecha: ',//dia,' de ',document('../data/meses.xml')/meses/mes[@id=current()//mes]/text(),' de ',//anyo)"></xsl:value-of></h3>                  
                    
                </header>
                <main>
                    <form action="enviarExamen.php" method="get">
                    <div class="formulario">
                                <xsl:for-each select="//pregunta">
                                <div class="pregunta">
                                    <div class="enunciadoPregunta"><xsl:value-of select="concat(@id,'.-',enunciado)"/></div>
                                    <div class="respuesta">
                                        <xsl:apply-templates select="respuestas/respuesta">
                                            <xsl:with-param name="idPregunta" select="current()/@id"/>
                                        </xsl:apply-templates>
                                    </div>
                                </div>
                        </xsl:for-each>
                        </div>
                        <xsl:if test="$corregido='no'">
                            <div class="botones">
                                <input type="submit" value="Enviar formulario"/>
                                <input type="reset" value="Borrar formulario"/> 
                            </div>
                        </xsl:if>
                         </form>
                </main>
                <footer>
                    
                </footer>
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