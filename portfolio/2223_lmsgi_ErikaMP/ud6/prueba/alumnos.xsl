<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : alumnos.xsl
    Created on : 11 de abril de 2023, 9:17
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/alumnos">
        <html>
            <head>
                <title>Alumno - EMP</title>
                <style>
                    table {
                        border-collapse: collapse;
                        padding: 6px;
                        background-color: #0FF895;
                    }
                    th {
                        border: 1px solid #14B872;
                        text-align: center;
                    }
                    td {
                        border: 1px solid #14B872;
                    }
                    tr {
                        border: 1px solid #14B872;
                    }
                </style>
            </head>
            <body>
                <h1>Alumnos</h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Direccion</th>
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
            <td>
                <ul><xsl:apply-templates select="direccion"/></ul>
            </td>
        </tr>
    </xsl:template>    
    
    <xsl:template match="direccion">
        <li>
            <xsl:value-of select="concat(poblacion,' ',cp)"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
