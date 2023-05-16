<html>
  <head>
    <title>UD07.01.05
    . Carlos G</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="../src/estilo.css"/>
  </head>
  <body>
    <h1>Bookstore</h1>
   <table>
     <tr>
       <th>Titulo</th>
       <th>Categoría</th>
       {
          for $x in doc("books")/bookstore/book
        order by $x/title
        return <tr><td>{$x/title/text()}</td><td>{data($x/@category)}</td></tr>
       }
     </tr>
   </table>
   <ul>
     {
        for $x in doc("books")/bookstore/book
        order by $x/title
        return <li class="{data($x/@category)}">{ data($x/title/text())}</li>
     }
   </ul>
  </body>
</html>