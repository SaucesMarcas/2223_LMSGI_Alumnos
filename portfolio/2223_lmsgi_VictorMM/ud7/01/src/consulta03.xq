<html>
  <head>
    <title>Ud07.A01p3 Listado de libros</title>
  </head>
  <body>
    <header>
      <h1>Listado de libros</h1>
    </header>
    <ul>
      {
        for $x in doc("books")/bookstore/book 
        where $x/price>30
        order by $x/title
        return<li>{$x/title/text()}</li>
    }
    </ul>
  </body>
</html>
