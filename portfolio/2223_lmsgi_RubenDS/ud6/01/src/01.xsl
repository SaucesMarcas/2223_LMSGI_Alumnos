<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>01 XSLT Ruben Diez Sanchez</title>
                <style>
                    /* Estilos CSS para la lista */
                    ul {
                        list-style-type: none;
                        margin: 0;
                        padding: 0;
                    }
                    li {
                        margin: 0 0 5px 0;
                        padding: 10px;
                        background-color: #f5f5f5;
                    }
                    .header {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h1>Índice de Viviendas</h1>
                <ul>
                    <xsl:for-each select="edificio/vivienda">
                        <li>
                            <span class="header">Piso:</span> <xsl:value-of select="piso"/><br/>
                            <span class="header">Puerta:</span> <xsl:value-of select="puerta"/><br/>
                            <span class="header">Vecinos:</span><br/>
                            <ul>
                                <xsl:for-each select="vecinos/nombre">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml-stylesheet type="text/xsl" href="01.xsl"?>