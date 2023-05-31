<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../../libreria/libreria.xsl"/>
    <xsl:param name="corregido" select="'no'"/>
    <xsl:template match="/examen">
        <xsl:call-template name="docTipo"/>
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'Crea un formulario a partir XML'"/>
                    <xsl:with-param name="autor" select="'Alex Asensio'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link type="text/css" rel="stylesheet" href="../src/estilos.css"/>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2><xsl:value-of select="datos/nombreModulo"/></h2>
                    <h3>Fecha: <xsl:value-of select="concat('Fecha ',//dia,' de ',document('../data/meses.xml')/meses/mes[@id=current()//mes]/text(),' del ',//anyo)"/></h3>
                </header>
                <main>
                    <form method="get" action="enviarExamen.php">
                        <xsl:for-each select="preguntas/pregunta">
                            <div class="pregunta">
                                <div class="enunciadoPregunta">
                                    <xsl:value-of select="concat(@id,' .- ',enunciado)"/>
                                </div>
                                <div class="respuesta">
                                    <xsl:apply-templates select="respuestas/respuesta">
                                        <xsl:with-param name="idPregunta" select="@id"/>
                                    </xsl:apply-templates>
                                </div>
                            </div>
                        </xsl:for-each>
                    </form>
                </main>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="respuestas/repuesta">
        <xsl:param name="idPregunta"/>
        
        <div>
            <xsl:value-of select="$idPregunta"/>
        </div>
    </xsl:template>
</xsl:stylesheet>