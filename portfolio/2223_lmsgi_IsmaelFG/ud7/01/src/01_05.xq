
<html>
<head>
<link rel="stylesheet" href="01_05.css"/>
<title>UD7-01.04 Listado de libros</title>
</head>
<body>
<header><h1>Bookstore</h1></header>
<table>
  <tr>
    <td>Titulo</td>
    <td>Categoria</td>
  </tr>
  {
  for $x in doc("books")/bookstore/book/title/text() order by $x
return
<tr>
  <td>{$x}</td>
  <td>{data($x/../../@category)}</td>
</tr>
}
</table>

<ul>
{
for $x in doc("books")/bookstore/book/title/text() order by $x
return<li class="{data($x/../../@category)}">{$x}</li>
}
</ul>
</body>
</html>