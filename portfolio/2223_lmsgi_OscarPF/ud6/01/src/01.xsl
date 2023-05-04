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
                <header>
                    <h1>Informacion de las viviendas</h1>
                </header>
                <main>
                    <div>
                        <xsl:apply-templates select="vivienda"/>
                    </div>
                </main>
                <footer>
                    <h2><xsl:value-of select="concat('Número de viviendas: ',count(//vivienda))"/></h2>
                    <h2><xsl:value-of select="concat('Número de vecinos: ',count(//nombre))"/></h2>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
        <h2>    
            <xsl:value-of select="concat('Piso',piso,'Puerta',puerta)"/>
        </h2>
            
    <ol>
        <xsl:apply-templates select="vecinos/nombre"/>
    </ol>
        
</xsl:template>
    
<xsl:template match="vecinos/nombre">
    <li><xsl:value-of select="./text()"/></li>
</xsl:template>

</xsl:stylesheet>
