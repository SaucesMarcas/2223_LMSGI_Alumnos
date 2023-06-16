<html>
    <head>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="author" content="Alvaro Cordero"/>
        <title>05Web Alvaro Cordero</title>
        <link href="../target/css/estilos.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
      <header>
         <div class="menu">

              <a href="todo.html" id="enlace">Todo</a>

              <a>Titulo</a>

              <a>Autor</a>

              <a>Editorial</a>

              <a>Sinopsis</a>
        </div>
      </header>
      <main>
        <table>
            <tr>
                <th>Codigo</th>
                <th>Titulo</th>
            </tr>
            {
              for $x in doc('05')//libro 
              return <tr><td>{$x/codigo}</td><td>{$x/titulo}</td></tr>
              
            }
            
        </table>
      </main>
      

   </body>
   </html>