<html>
<head>
<title>UD7-01.03 Listado de libros Ismael Ferreras</title>
</head>
<body>
<header><h1>Listado de libros</h1></header>
<table>
{
for $x in doc("books") 
/bookstore/book/title
return
<tr>
  <td>{data($x)}</td>
</tr>
}
</table>
</body>
</html>