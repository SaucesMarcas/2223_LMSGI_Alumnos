<<<<<<< HEAD
<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05.xsl
    Created on : 4 de mayo de 2023, 13:05
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../../lib/libreria.xsl"/>
    <xsl:param name="corregido" select="'no'"/>
    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/examen">
        <xsl:call-template name="docTipo"/>
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'Crea un formulario a partir XML'"/>
                    <xsl:with-param name="autor" select="'Ismael FG'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link href="../src/05.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="datos/nombreCiclo"/>
                    </h1>
                    <h2>
                        <xsl:value-of select="datos/nombreModulo"/>
                    </h2>
                    <h3>
                        <xsl:value-of select="concat('Fecha: ',//dia,' de ',document('../data/meses.xml')/meses/mes[@id=current()//mes]/text(),' de ',//anyo)"/>
                    </h3>
                </header>
                <main>
                    <form method="get" action="#enviarExamen.php">
                         <div class="preguntas">
                            <xsl:for-each select="preguntas/pregunta">
                                <div class="pregunta">   
                                    <div class="enunciadoPregunta">
                                        <xsl:value-of select="concat(@id,'.- ',enunciado)"/>
                                    </div>
                                    <div class="respuesta">
                                        <xsl:apply-templates select="respuestas/respuesta">
                                            <xsl:with-param name="idPregunta" select="@id"/>
                                        </xsl:apply-templates>
                                    </div>
                                 </div>
                            </xsl:for-each>
                            </div>
                        <xsl:if test="$corregido='no' ">
                            <div class="botones">
                                <input type="submit" value="Enviar formulario"/>
                                <input type="reset" value="Borrar formulario"/>
                            </div>
                        </xsl:if>
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
                    <xsl:value-of  select="concat('var',$idPregunta)"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of  select="concat('id',$idPregunta,position())"/>
                </xsl:attribute>
                <xsl:attribute name="value">
                    <xsl:value-of  select="position()"/>
                </xsl:attribute>
                <xsl:if test="$corregido!='no' ">
                    <xsl:attribute name="disabled"/>
                    <xsl:if test="@correcta='correcta' ">
                        <xsl:attribute name="checked"/>
                    </xsl:if>
                </xsl:if>
            </input>
            <xsl:value-of select="./text()"/>
        </label>
    </xsl:template>
</xsl:stylesheet>
=======
<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05.xsl
    Created on : 4 de mayo de 2023, 13:05
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../../lib/libreria.xsl"/>
    <xsl:param name="corregido" select="'no'"/>
    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/examen">
        <xsl:call-template name="docTipo"/>
        <html>
            <head>
                <xsl:call-template name="metaweb">
                    <xsl:with-param name="descripcion" select="'Crea un formulario a partir XML'"/>
                    <xsl:with-param name="autor" select="'Ismael FG'"/>
                    <xsl:with-param name="titulo">
                        <xsl:value-of select="datos/nombreModulo"/>
                    </xsl:with-param>
                </xsl:call-template>
                <link href="../src/05.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="datos/nombreCiclo"/>
                    </h1>
                    <h2>
                        <xsl:value-of select="datos/nombreModulo"/>
                    </h2>
                    <h3>
                        <xsl:value-of select="concat('Fecha: ',//dia,' de ',document('../data/meses.xml')/meses/mes[@id=current()//mes]/text(),' de ',//anyo)"/>
                    </h3>
                </header>
                <main>
                    <form method="get" action="#enviarExamen.php">
                         <div class="preguntas">
                            <xsl:for-each select="preguntas/pregunta">
                                <div class="pregunta">   
                                    <div class="enunciadoPregunta">
                                        <xsl:value-of select="concat(@id,'.- ',enunciado)"/>
                                    </div>
                                    <div class="respuesta">
                                        <xsl:apply-templates select="respuestas/respuesta">
                                            <xsl:with-param name="idPregunta" select="@id"/>
                                        </xsl:apply-templates>
                                    </div>
                                 </div>
                            </xsl:for-each>
                            </div>
                        <xsl:if test="$corregido='no' ">
                            <div class="botones">
                                <input type="submit" value="Enviar formulario"/>
                                <input type="reset" value="Borrar formulario"/>
                            </div>
                        </xsl:if>
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
                    <xsl:value-of  select="concat('var',$idPregunta)"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of  select="concat('id',$idPregunta,position())"/>
                </xsl:attribute>
                <xsl:attribute name="value">
                    <xsl:value-of  select="position()"/>
                </xsl:attribute>
                <xsl:if test="$corregido!='no' ">
                    <xsl:attribute name="disabled"/>
                    <xsl:if test="@correcta='correcta' ">
                        <xsl:attribute name="checked"/>
                    </xsl:if>
                </xsl:if>
            </input>
            <xsl:value-of select="./text()"/>
        </label>
    </xsl:template>
</xsl:stylesheet>
>>>>>>> ccd1c0e7ea24859bd6048a3e9488bfa78d456b58
