<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 13 de junio de 2023, 10:15
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/software-libre">
        <ultimaversion>
            <xsl:for-each select="lanzamientos/lanzamiento">
                <xsl:value-of select="lanzamiento"/>
            </xsl:for-each>
        </ultimaversion>
    </xsl:template>

</xsl:stylesheet>
