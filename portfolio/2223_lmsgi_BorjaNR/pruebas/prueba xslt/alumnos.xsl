<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 11 de abril de 2023, 9:25
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/alumnos">
        
        <html>
            <head>
                <title>Alumnos -BNR</title>
                <style>
                    table,tr,th,td{
                        border:solid.1px;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>nombre</th>
                        <th>apellido</th>
                    </tr>
                
                <xsl:apply-templates select="alumno"/>
               </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellido"/></td>
            <td><ul><xsl:apply-templates select="direccion"/></ul></td>
         </tr>
    </xsl:template>
    
    <xsl:template match="direccion">
        <li><xsl:value-of select="concat (cp,' ',poblacion)"/></li>
    </xsl:template>

</xsl:stylesheet>
