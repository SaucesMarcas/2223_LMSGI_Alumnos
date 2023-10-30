<html>
<head>
  <title>UD7-01.03 Listado de libros. Borja Nuñez Refoyo</title>
  <meta charset="UTF-8"/>
  <link href="./resultado05.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <header>
     <h1>Bookstore</h1>
  </header>
  <main>
    <table>
      <tr>
        <th>Titulo</th>
        <th>Categoria</th>
      </tr>
      {
      for $x in doc("books")/bookstore/book
      return<tr>
         <td>{$x/title/text()}</td>
         <td>{$x/@category}</td>
      </tr>
      }
    </table>
    <ul>
    {
      for $x in doc("books")/bookstore
      /book
      return <li class="{$x/@category}">{$x/title/text()}</li>
    }
    </ul>
  </main>
</body>
</html>