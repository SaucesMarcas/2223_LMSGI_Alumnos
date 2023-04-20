<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="../src/02.xsl">

    <!-- Template para el elemento raíz -->
    <xsl:template match="/">
        <html>
            <head>
                <meta name="description" content="coleccion">/</meta>
                    <meta name="author" content="Ruben Diez">/</meta>
                            <meta name="keywords" content="Tickets" >/</meta>
                            <meta name="generator" content="netbeans">/</meta>
                            <meta name="refresh" content="5">/</meta>
                            <meta name="viewport" content="width=device-width, initial-scale=1.0">/</meta>
                            <link rel="stylesheet" href="../src/style.css">/</link>
                <title>02 XSLT Ruben Diez Sanchez</title>
            </head>
            <body>
                <h1>Listado de tickets</h1>
                <table>
                    <tr>
                        <th>Número</th>
                        <th>Fecha</th>
                        <th>Hora</th>
                        <th>Productos</th>
                        <th>Total</th>
                    </tr>
                    <!-- Aplicar el template para cada ticket -->
                    <xsl:apply-templates select="listatickets/ticket"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Template para cada ticket -->
    <xsl:template match="ticket">
        <tr>
            <td>
                <xsl:value-of select="numero"/>
            </td>
            <td>
                <xsl:value-of select="fecha"/>
            </td>
            <td>
                <xsl:value-of select="hora"/>
            </td>
            <td>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                    </tr>
                    <!-- Aplicar el template para cada producto -->
                    <xsl:apply-templates select="producto"/>
                </table>
            </td>
            <td>
                <xsl:value-of select="total"/>
            </td>
        </tr>
    </xsl:template>

    <!-- Template para cada producto -->
    <xsl:template match="producto">
        <tr>
            <td>
                <xsl:value-of select="nombre"/>
            </td>
            <td>
                <xsl:value-of select="precio"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
<?xml-stylesheet type="text/xsl" href="02.xsl"?>