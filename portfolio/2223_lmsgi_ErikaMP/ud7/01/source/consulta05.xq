<html lang="es">
  <head>
    <meta encoding="UTF-8"/>
    <link href="style.css" rel="stylesheet" type="text/css"/>
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
          return 
          <tr>
            <td>{$x/title/text()}</td>
            <td>{data($x/@category)}</td>
          </tr>
        }
    </table>
      <ul>
        {
          for $x in doc("books")/bookstore/book
          order by $x/title
          return <li class="{data($x/@category)}">{$x/title/text()}</li>
        }
      </ul>
  </body>
</html>