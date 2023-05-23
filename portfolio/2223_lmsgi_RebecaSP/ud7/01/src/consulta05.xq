<html>
  <head>
    <title>Ud07.01.05 Tabla y listado de libros. Rebeca Sánchez</title>
    <meta charset="UFT-8"/>
    <link href="css/05.css" type="text/css" rel="stylesheet"/>
  </head>
  <body>
    <h1>Bookstore</h1>
    <table>
      <tr>
        <th>Título</th>
        <th>Categoría</th>
      </tr>
      {
      for $x in doc('books')/bookstore/book
      order by $x/title
      return <tr><td>{$x/title/text()}</td><td>{data($x/@category)}</td></tr>
      }
    </table>
    <ul>
      {for $x in doc("books")/bookstore/book
      order by $x/title
      return <li class="{$x/@category}">{$x/title/text()}</li>
      }
    </ul>
  </body>
</html>
