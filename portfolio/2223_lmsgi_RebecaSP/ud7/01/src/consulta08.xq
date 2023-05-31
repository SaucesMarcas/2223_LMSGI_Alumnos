<html>
  <head>
    <title>Ud07.01.08 Listado de Prácticas. Rebeca Sánchez</title>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <h1>Listado de prácticas</h1>
    <div>
      {
      for $tema in (1 to 7), $ejercicio in (1 to 3)
      return <div>
        <a href="{$tema}/{$ejercicio}.html">Tema{$tema} Ejercicio{$ejercicio}</a>
      </div>
      }
    </div>
  </body>
</html>
