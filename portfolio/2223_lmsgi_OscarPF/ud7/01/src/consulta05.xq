<html lang="es">
<head>
<title>Ud07.01.05 Bookstore. Oscar P</title>
<meta charset="UTF-8"/>
<link rel="stylesheet" href="styles.css"/>
</head>
<body>
<h1>Bookstore</h1>
<table style="border">
<tr>
<th>Titulo</th>
<th>Categoria</th>
</tr>
{  
  for $x in doc("books")/bookstore/book
  order by $x/title/text()
  return <tr><td>{$x/title/text()}</td><td>{data($x/@category)}</td></tr>
}
</table>
<ul>
{
for $x in doc("books")/bookstore/book
 order by $x/title/text()
 return <li class="{data($x/@category)}">{$x/title/text()}</li>
}
</ul>
</body>
</html>