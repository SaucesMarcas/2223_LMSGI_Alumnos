<html lang="es">
<head>
<title>Ud7.01.01 Listado de libros. Alex A</title>
<meta charset="UTF-8"/>
</head>
<body>
<h1>Listado de Libros</h1>
<ul>
{
  for $x in doc ("books")/bookstore/book
  where $x/price>30
  order by $x/title
  return <li>{ $x/title/text()}</li>
}
</ul>
</body>
</html>