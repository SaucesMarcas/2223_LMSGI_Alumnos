<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/examen">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="author" content="Carlos García Cachón"/>
                <link rel="icon" type="images/favicon.ico" sizes="32x32" href="../../../webroot/images/favicon.ico"/>
                <meta name="description" content="Practicando con XSLT"/>
                <meta name="keywords" content="XSLT"/>
                <meta name="generator" content="NetBeans"/>
                <meta name="generator" content="60"/>
                <link rel="stylesheet" href="../src/examen.css"/>
                <title>XSLT 05 Carlos Garcia Cachon</title>
            </head>
            <body>
                <header>
                    <h1>Desarrollo de Aplicaciones Web<br/>Lenguaje de Marcas y Sistemas Gestión de Información<br/>
                    <xsl:value-of select="fecha"></xsl:value-of>                    
                    </h1>
                </header>
                <main>
                    <xsl:for-each select="/preguntas">
                        <xsl:value-of select="pregunta"></xsl:value-of>
                    </xsl:for-each>
                </main>
                <footer>
                    
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>