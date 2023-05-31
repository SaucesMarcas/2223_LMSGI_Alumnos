
<html>
<head>
<title>UD7-01.03 Listado de libros Ismael Ferreras</title>
</head>
<body>
<header><h1>Listado de libros</h1></header>


<ol>

{
for $x in doc("books")/bookstore/book/title/text() order by $x
return<li>{$x}</li>
}

</ol>
</body>
</html>