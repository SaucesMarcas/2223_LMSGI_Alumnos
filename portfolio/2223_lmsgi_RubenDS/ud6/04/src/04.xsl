<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>04 XSLT Victor Manuel Manrique Villarino</title>
      </head>
      <body>
        <h1>Coches</h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Matrícula</th>
            <th>reperaciones</th>
          </tr>
          <xsl:for-each select="//coche">
            <tr>
              <td><xsl:value-of select="matricula"/></td>
              <td><xsl:value-of select="concat('J0001',Reparaciones)"/></td>
              <td><xsl:value-of select="concat('Fallo elevalunas','Rearaciones')"/></td>
              </tr>
          </xsl:for-each>
        </table>
        <br/>
        <h1>Reparaciones</h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Código de reparación</th>
            <th>Descripción</th>
            <th>Fecha de entrada</th>
            <th>Fecha de salida</th>
            <th>Horas</th>
          </tr>
          <xsl:for-each select="//reparacion">
            <tr>
              <td><xsl:value-of select="@codigo"/></td>
              <td><xsl:value-of select="descripcion"/></td>
              <td><xsl:value-of select="fecha_entrada"/></td>
              <td><xsl:value-of select="fecha_salida"/></td>
              <td><xsl:value-of select="horas"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>