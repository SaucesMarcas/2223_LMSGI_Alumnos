<html>
<head>
<title>UD7 Listado de bailes Ismael Ferreras</title>
</head>
<body>
<header><h1>Listado de bailes</h1></header>
<table>
{
for $x in doc("bailes")/bailes/baile
return
<tr>
  <td>{data($x/nombre)}</td>
  <td>{data($x/profesor)}</td>
</tr>
}
</table>
</body>
</html>