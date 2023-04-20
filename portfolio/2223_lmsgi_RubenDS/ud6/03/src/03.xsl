<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 20 de abril de 2023, 13:08
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <meta name="description" content="coleccion">/</meta>
                    <meta name="author" content="Ruben Diez">/</meta>
                            <meta name="keywords" content="Peliculas" >/</meta>
                            <meta name="generator" content="netbeans">/</meta>
                            <meta name="refresh" content="5">/</meta>
                            <meta name="viewport" content="width=device-width, initial-scale=1.0">/</meta>
                            <link rel="stylesheet" href="../src/style.css">/</link>
                <title>03 XSLT Ruben Diez Sanchez</title>
                <style>
                    /* Estilos CSS para la lista */
                    ul {
                        list-style-type: none;
                        margin: 0;
                        padding: 0;
                    }
                    li {
                        margin: 0 0 5px 0;
                        padding: 10px;
                        background-color: #f5f5f5;
                    }
                    .header {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <table>  
                <h1>Información de peliculas</h1>
                <tbody>
                <h2>Aguas oscuras</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Adultos</p>
                    </td>
                </tr>
                <h2>La piel que habito</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Adultos</p>
                    </td>
                </tr>
                <h2>Queen Slim</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Adultos</p>
                    </td>
                </tr>
                <h2>La candidata perfecta</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Mayores de 12</p>
                    </td>
                </tr>
                <h2>La camarista</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Mayores de 12</p>
                    </td>
                <h2>Los descendientes</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Mayores de 12</p>
                    </td>
                <h2>Judy</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Mayores de 16</p>
                    </td>
                <h2>El hombre invisible</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Mayores de 16</p>
                    </td>
                <h2>Richard Jewell</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a:Mayores de 16</p>
                    </td>
                <h2>La invención de Hugo</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a: Todos los publicos</p>
                    </td>
                <h2>El huevo de dinosaurio</h2>
                <tr>
                    <td>
                        <p>Puntuación:</p>
                        <p>Dirigido a: Todos los publicos</p>
                    </td>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
<?xml-stylesheet type="text/xsl" href="03.xsl"?>