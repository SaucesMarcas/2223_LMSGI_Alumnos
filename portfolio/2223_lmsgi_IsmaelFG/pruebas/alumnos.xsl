<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/alumnos">
        <html>
            <head>
                <title>Alumnos- ARN</title>
            </head>
            <body>
                <h1>Alumnos</h1>
                <table>
                    <tr>
                        <th>nombre</th>
                        <th>apellido</th>
                        <th>direccion</th>
                    </tr>
                    <xsl:apply-templates select="alumno"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="alumno">
        <tr>
            <td>
                <xsl:value-of select="nombre"/>
            </td>
            <td>
                <xsl:value-of select="apellido"/>
            </td>
            <td>
                <xsl:value-of select="direccion"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="direccion">
        <li>
            <xsl:value-of select="concat(poblacion,' ', cp)"/>
        </li>
    </xsl:template>
</xsl:stylesheet>