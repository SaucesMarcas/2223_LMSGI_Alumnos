<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 06.xsl
    Created on : 11 de mayo de 2023, 13:39
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/network">
        <html>
            <body>
                <xsl:for-each select="interface">
                    <xsl:text>network:</xsl:text>
                    <xsl:text>version:</xsl:text>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
