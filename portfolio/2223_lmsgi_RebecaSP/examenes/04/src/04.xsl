<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 13 de junio de 2023, 10:24
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/software-libre">
        <xsl:text>
            {
            "lanzamientos": [</xsl:text>
        <xsl:for-each select="lanzamientos/lanzamiento[@distribucion='ubuntu' or @distribucion='redhat']">
            <xsl:text>
                {
                "distibucion":"</xsl:text>
            <xsl:value-of select="@distribucion"/>
            <xsl:text>",
                </xsl:text>
            <xsl:text>"version":"</xsl:text>
            <xsl:value-of select="@version"/>
            <xsl:text>"
                },</xsl:text>
        </xsl:for-each>  
        <xsl:text>  
            ]
            }
        </xsl:text>        
    </xsl:template>

</xsl:stylesheet>
