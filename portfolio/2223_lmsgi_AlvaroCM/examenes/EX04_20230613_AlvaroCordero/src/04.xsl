<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : notasfinales.xsl
    Created on : 25 de mayo de 2023, 13:09
    Author     : Alvaro Cordero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/software-libre">
        <xsl:text>{</xsl:text>
        <xsl:text>
            "lanzamientos": [
        </xsl:text>
        
        <xsl:for-each select="//lanzamiento[@distribucion='ubuntu' or @distribucion='redhat']">
            <xsl:text>
                {
            </xsl:text>
            <xsl:text>
                "distribucion": "<xsl:value-of select="concat(@distribucion, ',')"/>"
            </xsl:text>
            <xsl:text>
                "version": <xsl:value-of select="concat(@version)"/>
            </xsl:text>
            <xsl:text>
                },
            </xsl:text>
            
        </xsl:for-each>
        <xsl:text>
            ]
        </xsl:text>
            
        <xsl:text>
            }
        </xsl:text>
   
        
    </xsl:template>
    <xsl:template match="/boletin">
        
    </xsl:template>
</xsl:stylesheet>
