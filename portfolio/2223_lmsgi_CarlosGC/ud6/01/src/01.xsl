<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/edificio">
    <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="UTF-8"/>
                    <meta name="author" content="Carlos García Cachón"/>
                    <link rel="icon" type="images/favicon.ico" sizes="32x32" href="images/favicon-32x32.png"/>
                    <meta name="description" content="Practicando con XSLT"/>
                    <meta name="keywords" content="XSLT"/>
                    <meta name="generator" content="NetBeans"/>
                    <meta name="generator" content="60"/>
                    <link rel="stylesheet" href="css/estilo.css"/>
                <title>XSLT 01 Carlos Garcia Cachon</title>
            </head>
            <body>
<<<<<<< HEAD:portfolio/2223_lmsgi_CarlosGC/ud6/01/src/01.xsl
                <main>
                     <h1>Información de las viviendas</h1>
                     <xsl:apply-templates select="vivienda"/>
                </main>
                <footer>
                    <div>
                        <xsl:value-of select="concat('Número de viviendas: ',count(//vivienda))"></xsl:value-of>
                    </div>
                    <div>
                         <xsl:value-of select="concat('Número de vecinos: ',count(//nombre))"></xsl:value-of>
                    </div>
                </footer>
=======
                <h1>Información de las viviendas</h1>
                <xsl:apply-templates select="vivienda"/>
                <p>Número de viviendas: <xsl:value-of select="count(vivienda)"></xsl:value-of></p>
                <p>Número total de vecinos: <xsl:value-of select="count(vivienda/vecinos)"></xsl:value-of></p> 
>>>>>>> f80379078ab1c26f2e49b87f163f327364ab852f:portfolio/2223_lmsgi_CarlosGC/ud6/src/01.xsl
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
<<<<<<< HEAD:portfolio/2223_lmsgi_CarlosGC/ud6/01/src/01.xsl
        <xsl:value-of select="concat('Piso: ',piso,' Puerta: ',puerta)"></xsl:value-of>
        <ol>
            <xsl:apply-templates select="vecinos/nombre"/>
        </ol>
    </xsl:template>

    <xsl:template match="vecinos/nombre">
        <li> <xsl:value-of select="current()"></xsl:value-of></li>
=======
        <p>Piso: <xsl:value-of select="piso"></xsl:value-of>    Puerta: <xsl:value-of select="puerta"></xsl:value-of></p> 
        <xsl:apply-templates select="vecinos"/>
    </xsl:template>

    <xsl:template match="vecinos">
        <xsl:value-of select="current()"></xsl:value-of>
>>>>>>> f80379078ab1c26f2e49b87f163f327364ab852f:portfolio/2223_lmsgi_CarlosGC/ud6/src/01.xsl
    </xsl:template>

</xsl:stylesheet>