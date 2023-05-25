<html>
<head>
<title>UD7-01.07 Listado de practicas</title>
</head>
<body>
<header><h1>Listado de practicas</h1></header>
<div>
{
for $x in (1 to 7), $y in(1 to 3)
return <a href="{$x}/{$y}.html">Tema {$x} Ejercicio {$y}</a>
}
</div>
</body>
</html>