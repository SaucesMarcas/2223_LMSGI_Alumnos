<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>UD07.1.08 Listado de Practicas Carlos G</title>
</head>
<body>
  <h1>Listado de practicas</h1>
  {
    for $tema in (1 to 7), $y in (1 to 3)
    return <div>
        <a href="{$tema}/{$y}.html">Tema{$y} Ejercicio{$y}</a>
           </div>
  }
</body>
</html>

