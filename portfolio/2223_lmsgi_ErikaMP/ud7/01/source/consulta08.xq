<html lang="ES">
  <head>
    <meta enconding="UTF-8"/>
    <title>UND07.01.03</title>
  </head>
  <body>
    <h1>Listado de Práticas</h1>
    {
      for $x in (1 to 7), $y in (1 to 3)
      return 
      <div><a href="{$x}/{$y}.html">Tema {$x}-Ejercicio {$y}</a></div>
    }
  </body>
</html>