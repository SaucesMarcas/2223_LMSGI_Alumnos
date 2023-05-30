<html>
  <head>
    <title>Ud07.03.18 Listado de títulos. Rebeca Sánchez</title>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <h1>Listado de Títulos</h1>
    <table>
      {
        for $x in doc('books')//book
        return <tr><td>{$x/title/text()}</td></tr>
      }
    </table>
  </body>
</html>