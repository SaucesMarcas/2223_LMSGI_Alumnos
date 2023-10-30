<html>
<head>
<title>02.html</title>
<link href="../target/css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<img src="../target/images/logo.jpg"></img>
<header><h1>Distribucion de Software Linux</h1></header>
<ul>
{
  for $x in doc("distribucion")/software-libre/distribuciones/distribucion
return
  <li><a href="{data($x/web)}">{data($x/nombre)}</a></li>
} 
</ul>
</body>
</html>