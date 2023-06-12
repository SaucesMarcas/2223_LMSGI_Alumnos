  <html>
    <head>
      <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      <table>
        <tr>
          <th>Baile</th>
          <th>Profesor</th>
        </tr>
        {
          for $x in doc("bailes")/bailes/baile
          return <tr><td>{$x/nombre/text()}</td><td>{$x/profesor/text()}</td></tr>
        }
      </table>
    </body>
  </html>