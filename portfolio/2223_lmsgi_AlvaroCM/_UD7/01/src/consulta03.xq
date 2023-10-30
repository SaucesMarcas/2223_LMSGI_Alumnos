<html lang="es">
<head>
  <title>Ud7.01.03 Listado de libros. Alvaro Cordero</title>
  <meta charset="UTF8"/>
</head>
<body>
  <h1>Listado de libris</h1>
  <ul>
    {
      for $x in doc("books")/bookstore/book
       order by $x/title
      return  
      <li> 
        {$x/title/text()}
      </li>
    }
  </ul>
</body>
</html>
