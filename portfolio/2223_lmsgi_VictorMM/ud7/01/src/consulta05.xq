<html>
  <head>
    <title>Ud07.A01p5 Listado de libros</title>
    <link rel="stylesheet" href="css/estilos.css"/>
  </head>
  <body>
    <header>
      <h1>Bookstore</h1>
    </header>
    <table>
      <tr>
        <th>Titulo</th>
        <th>Categoría</th>
      </tr>
           {
              for $x in doc("books")/bookstore/book 
              return<tr><td>{data($x/title)}</td><td>{data($x/@category)}</td></tr>
              }    
    </table>
   <ul>
      {
        for $x in doc("books")/bookstore/book 
        return<li class="{data($x/@category)}">{$x/title/text()}</li>
    }
    </ul>
  </body>
</html>