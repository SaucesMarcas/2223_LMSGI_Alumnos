<html>
    <head>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="author" content="Carlos Garcia Cachon"/>
        <meta name="application-name" content="Portfolio de LMSGI"/>
        <meta name="description" content="Listado detitulos "/>
        <meta name="keywords" content="xslt, xml, html"/>
        <meta name="robots" content="index, follow"/>
        <link rel="icon" href="../../webroot/media/imagen/favicon.ico" type="image/x-icon"/>
        <title>Ejercicio 5 XQUERY</title>
        <link href="../target/css/estilos2.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
      <header>
              <nav>
                <ul>
                  <li><a href="#Todo">Todo</a></li>
                  <li><a href="#Titulo">Titulo</a></li>
                  <li><a href="#Autor">Autor</a></li>
                  <li><a href="#Editorial">Editorial</a></li>
                  <li><a href="#Sinopsis">Sinopsis</a></li>
                </ul>
              </nav>
       </header>
       <main>
         <table>
           <tr>
             <td>Codigo</td>
             <td>Título</td>
           </tr>
           {
             for $x in doc('05')/datos/libros/libro
               return <tr>
                         <td>{$x/codigo}</td>
                         <td>{$x/titulo}</td>
                       </tr> 
           }
         </table>
       </main>
   </body>
   </html>