    <?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : notasfinales.xsl
    Created on : 25 de mayo de 2023, 13:09
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/daw">
        <xsl:element name="daw">
            <xsl:attribute name="curso">
                <xsl:value-of select="@curso"/>
            </xsl:attribute>
            <xsl:for-each select="alumnos/alumno">
                <xsl:element name="alumno">
                    <xsl:attribute name="expediente">
                        <xsl:value-of select="expediente"/>
                    </xsl:attribute>
                    <xsl:for-each select="//calificacion[@expediente=current()/expediente]">
                        <xsl:element name="nota">
                            <xsl:attribute name="sigla">
                                <xsl:value-of select="@sigla"/>
                            </xsl:attribute>
                            <xsl:value-of select="round(sum(nota[.!='NP'])div 3)"/>
                        </xsl:element>                       
                    </xsl:for-each>
                </xsl:element>                
            </xsl:for-each>
        </xsl:element>

    </xsl:template>
    <xsl:template match="/boletin">

    </xsl:template>
</xsl:stylesheet>