<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
  <meta name="viewport" content="width=device-width" initial-scale="1.0"/>
  <meta name="author" content="Rebeca Sanchez Perez"/>
  <meta name="application-name" content="Portfolio de LMSGI"/>
  <meta name="description" content="Ejercicio 1 del examen 04"/>
  <meta name="keywords" content="xslt, xml, html"/>
  <meta name="robots" content="index, follow"/>
  <link rel="icon" href="../webroot/media/images/favicon.png" type="image/x-icon"/>
  <title>PREGUNTA 2</title>
  <link href="../target/css/estilos.css" rel="stylesheet" type="text/css"/>
 </head>
 <body>
   <header>
     <img src="../target/images/logo.jpg"/>
     <h1>Distribución de software Linux</h1>
   </header>
   <main>
   <ul>
     {
       for $x in doc('01')/software-libre/distribuciones/distribucion
       return
         <li><a href="{$x/web/text()}">{$x/nombre}</a></li>
     }
     </ul>
   </main>
 </body>
</html>