<html>
<head>
  <title>UD7-01.03 Listado de libros. Borja Nuñez Refoyo</title>
  <meta charset="UTF-8"/>
</head>
<body>
  <header>
    <h1>Listado de libros</h1>
  </header>
  <main>
    <ul>
    {
      for $x in doc("books")/bookstore
      /book
      where $x/price>30
      order by $x/title/text()
      return <li>{$x/title/text()}</li>
    }
    </ul>
  </main>
</body>
</html>