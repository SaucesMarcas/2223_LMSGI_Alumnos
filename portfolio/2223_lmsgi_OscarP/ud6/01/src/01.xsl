<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html"/>
    <xsl:template match="/edificio">
        <xsl:text disable-output-escaping="yes">&lt;DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <title>Edificios- OPF</title>
                <meta charset="UTF-8"/>
		<meta name="author" content="Oscar Pascual Ferrero"/>
		<link rel="icon" type="images/favicon.ico" sizes="32x32" href="images/favicon.ico"/>
		<meta name="description" content="JUGANDO CON DADOS"/>
		<meta name="keywords" content="dado, caras"/>
		<meta name="generator" content="Notepad++"/>
		<meta name="generator" content="60"/>
		<link rel="stylesheet" href="css/footer.css"/>
                <style>

                </style>
            </head>
            <body>
                <h1>Informacion de las viviendas</h1>
            
                    

                    <xsl:apply-templates select="vivienda"/>

            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
        <p>Piso: <xsl:value-of select="piso"/>
        Puerta: <xsl:value-of select="puerta"/></p>
        <xsl:apply-templates select="vecinos"/>
        
        
    </xsl:template>
    
    <xsl:template match="piso">
        <p>Piso<xsl:value-of select="piso"></xsl:value-of></p>
    </xsl:template>

    <xsl:template match="puerta">
        <p>Puerta</p>
        <p><xsl:value-of select="puerta"/></p>
    </xsl:template>
</xsl:stylesheet>
