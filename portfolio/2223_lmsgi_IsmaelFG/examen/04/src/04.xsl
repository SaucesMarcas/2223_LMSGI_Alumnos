<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 13 de junio de 2023, 10:31
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/software-libre">
        <xsl:text>
            {
            "lanzamientos": [
                                        <xsl:for-each select="lanzamientos/lanzamiento[@distribucion='ubuntu']"> 
                                         {
                                          "distribucion":"<xsl:value-of select="@distribucion"/>",                      
                                          "version":"<xsl:value-of select="@version"/>"
                                           },
                                           </xsl:for-each>   
                                          <xsl:for-each select="lanzamientos/lanzamiento[@distribucion='redhat']"> 
                                         {
                                          "distribucion":"<xsl:value-of select="@distribucion"/>",                      
                                          "version":"<xsl:value-of select="@version"/>"
                                           },
                                           </xsl:for-each>
                       
                                         
                                           
                                           
            
        </xsl:text>
        <xsl:text>
                                    ]
            
            }
        </xsl:text>
    </xsl:template>

</xsl:stylesheet>
