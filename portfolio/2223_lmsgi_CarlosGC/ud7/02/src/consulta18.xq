<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>UD07.2.18 Listado de Practicas Carlos G</title>
  <link rel="stylesheet" href="../src/estilo.css"/>
</head>
<body>
<table>
  {
    for $x in doc("books")/bookstore/book/title/text()
return 
    <tr>
      <td>{$x}</td>
    </tr>
  }
  </table>
</body>
</html>