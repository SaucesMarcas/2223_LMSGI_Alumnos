(: Mostar los titulos en una tabla html :)
  <html>
    <head>
      <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      <table>
        <th>Título</th>
        {
          for $x in doc("book")/bookstore/book/title
          return <tr><td>{$x/text()}</td></tr>
        }
      </table>
    </body>
  </html>