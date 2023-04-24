<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="../src/02.xsl"?>

<!--
    Document   : 02.xsl
    Created on : 20 de abril de 2023, 13:09
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
<xsl:template match="/peliculas">
        <html>
            <head>
                <meta charset= "utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="../src/estilos.css"/>
                <title>03 XSLT Ruben Diez Sanchez</title>
            </head>
            <body>
                <header>
                    <h1>Información de peliculas</h1>
                </header>
                <main>
                     <xsl:apply-templates select="pelicula">
                       
                    </xsl:apply-templates>
                </main>
                <footer>
                    <div>Número de tickets:<xsl:value-of select="count(//ticket)"/></div>
                    <div>Total de tickets:<xsl:value-of select="count(//precio)"/></div>
                </footer>
            </body>          
        </html>
    </xsl:template>
    <xsl:template match="pelicula">
        <article>
            <h3><xsl:value-of select="concat('Tickets: ',numero)"/></h3>
            <table>
                <caption><xsl:value-of select="concat('Fecha Ticket: ',fecha)"/></caption>     
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
                <xsl:apply-templates select="producto"/>
                <tfoot>
                    <tr>
                        <th>Total:</th>
                        <td> 
                            <xsl:value-of select="total"/>
                        </td>  
                    </tr>
                </tfoot>
            </table>
        </article>
    </xsl:template>
    
    <xsl:template match="producto">
        <article>
            <table>              
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="precio"/></td>
                </tr>
            </table>
        </article>
    </xsl:template>

</xsl:stylesheet>
