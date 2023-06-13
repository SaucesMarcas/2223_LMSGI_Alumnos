<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/software-libre">
        <xsl:text>{</xsl:text>
        <xsl:text>
            "lanzamientos": [
        </xsl:text>
            <xsl:for-each select="//lanzamientos/lanzamiento">
                <xsl:text>{</xsl:text>
                            <xsl:text>"distribucion":"</xsl:text><xsl:value-of select="@distribucion"/><xsl:text>"</xsl:text>
                            <xsl:text>"version":"</xsl:text><xsl:value-of select="@version"/><xsl:text>"</xsl:text> 
                        <xsl:text>},</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
        <xsl:text>}</xsl:text>
    </xsl:template>
</xsl:stylesheet>