(:18.Mostrar los titulos de los libros en una tabla html:)
<html>
  <head>
    <title>UD7-01.03 Listado de libros. Borja Nuñez Refoyo</title>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <header>Titulos</header>
    <main>
      <table>
        {
      for $x in doc("books")/bookstore/book
      return<tr>
         <td>{$x/title/text()}</td>
      </tr>
      }
      </table>
    </main>
  </body>
</html>