<html>
  <head>
    <title>Ud07.01.03 Listado de libros. Rebeca Sánchez</title>
    <meta charset="UFT-8"/>
  </head>
  <body>
    <h1>Listado de libros</h1>
    <ul>
      {for $x in doc("books")/bookstore/book
      where $x/price>30
      order by $x/title
      return <li>{$x/title/text()}</li>
      }
    </ul>
  </body>
</html>
