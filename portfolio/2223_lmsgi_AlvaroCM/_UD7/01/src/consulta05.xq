<html lang="es">
  <head>
    <meta charset="UTF-8"/>
    <title>Bookstore</title>
    <link href="css/style.css" type="text/css" rel="stylesheet"/>
  </head>
  <body>
    <h1>Bookstore</h1>
    <table>
      <tr>
        <th>Titulo</th>
        <th>Categoria</th>
      </tr>
        {       
           for $x in doc("books")/bookstore/book
           return <tr>
                      <td>{$x/title/text()}</td> 
                      <td>{data($x/@category)}</td> 
                   </tr>
        }
    </table>
    <ul>
      {       
          for $x in doc("books")/bookstore/book
          return <li class="{data($x/@category)}">
                  {$x/title/text()}
                  </li>
        }
    </ul>
  </body>
</html>