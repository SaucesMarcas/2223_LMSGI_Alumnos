# Unidad 7.1 XQUERY BOOKS

1. Consulta: Lista el título de los libros ordenados por título.
   
   `for $x in doc("books")/bookstore
    /book
    order by $x/title
    return $x/title/text()`
   
   Resultado:
   
   ```Xpath
    Everyday Italian
    Harry Potter
    Learning XML
    XQuery Kick Start  
    ```

2. Consulta: Lista el título de los libros ordenados por título cuyo precio es superior a 30.
   
   `for $x in doc("books")/bookstore/book
    where $x/price > 30
    order by $x/title
    return $x/title/text()`
   
   Resultado:
   
   ```Xpath
       Learning XML
       XQuery Kick Start
    ```

3. Crea una página web (03.html) cuyo título de la web “UD7-01.03 Listado de libros. Nombre y 
apellidos” y que contenga una lista con viñetas con los títulos de los libros
   
   `<html>
  <head>
    <title>UD07.01.03
    . Carlos G</title>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <h1>Listado de Libros</h1>
   <ul>
     {
        for $x in doc("books")/bookstore/book
        where $x/price > 30
        order by $x/title
        return <li>{ $x/title/text()}</li>
     }
   </ul> 
  </body>
</html>`
   
   Resultado:
   
   ```Xpath
       <html><head><title>UD07.01.03
    . Carlos G</title><meta charset="UTF-8"/></head><body><h1>Listado de Libros</h1><ul><li>Learning XML</li><li>XQuery Kick Start</li></ul></body></html> 
    ```

4. Crea un documento XML(04.html), donde el elemento raíz es libros. Y si la categoría del libro es 
children el título aparece entre las etiquetas <children> y en caso contrario aparece con la etiqueta 
<adult>
   
   `<libros>
{
  for $x in doc('books')/bookstore/book
  return if ($x/@category="children")
            then <children>{$x/title/text()}</children>
            else <adult>{$x/title/text()}</adult>
}
</libros>`
   
   Resultado:
   
   ```Xpath
        <libros><adult>Everyday Italian</adult><children>Harry Potter</children><adult>XQuery Kick Start</adult><adult>Learning XML</adult></libros>
    ```

5. . Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece 
distintos colores el título en función de la categoría.
   
   `<html>
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
       <th>CategorÃ­a</th>
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
</html>`
   
   Resultado:
   
   ```Xpath
        <html><head><title>UD07.01.05
            . Carlos G</title>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="../src/estilo.css"/></head>
    <body>
        <h1>Bookstore</h1>
        <table>
            <tr><th>Titulo</th><th>Categoría</th></tr>
            <tr><td>Everyday Italian</td><td>cooking</td></tr>
            <tr><td>Harry Potter</td><td>children</td></tr>
            <tr><td>Learning XML</td><td>web</td></tr>
            <tr><td>XQuery Kick Start</td><td>web</td></tr>
        </table>
        <ul>
            <li class="cooking">Everyday Italian</li>
            <li class="children">Harry Potter</li>
            <li class="web">Learning XML</li>
            <li class="web">XQuery Kick Start</li>
        </ul>
    </body>
</html>
    ```
    
6. Lista de libros ordenados por categoría de forma descendiente, y como segundo criterio por título
de forma descendiente. Mostrando el título con suprecio precio, donde el precio es mayor que 30 $.
El resultado (06.txt) es un fichero de texto:
   
   `for $x in doc("books")/bookstore/book
    where $x/price > 30
    order by $x/title descending, $x/@category descending
    return concat($x/title/text(),' : ',$x/price/text(),'$')`
   
   Resultado:
   
   ```Xpath
        XQuery Kick Start : 49.99
        Learning XML : 39.95
    ```

7. Uso de at, for variable1 at variable2 expresiónXpath, siendo la segunda variable la posición de 
cada nodo. Genera el siguiente archivo XML (07.xml), 

   
   `<books>
    {
      for $x at $i in doc('books')/bookstore/book 
      return <book>{concat($i,'. ',$x/title/text())}</book>
    }
    </books>`
   
   Resultado:
   
   ```Xpath
        <books><book>1. Everyday Italian</book><book>2. Harry Potter</book><book>3. XQuery Kick Start</book><book>4. Learning XML</book></books> 
    ```

8. Uso de variables expresiones en un for $tema in (lista de valores), $y in (lista de valores). Para 
indicar la lista de valor de valorinicial to valorfinal, por ejemplo 1 to 100
Generar automáticamente la siguiente página web (08.html)
   
   `<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>UD07.1.08 Listado de Practicas Carlos G</title>
</head>
<body>
  <h1>Listado de practicas</h1>
  {
    for $tema in (1 to 7), $y in (1 to 3)
    return <div>
        <a href="{$tema}/{$y}.html">Tema{$y} Ejercicio{$y}</a>
           </div>
  }
</body>
</html>
`
   
   Resultado:
   
   ```Xpath
    <html lang="es">
    <head>
        <meta charset="UTF8"/>
        <title>Listado de Practicas Carlos Garcia</title>
    </head>
    <body>
        <h1>Listado de practicas</h1>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        <div><a href="#">Tema1 Ejercicio2</a></div>
        ....
    </body>
    </html>
    ```

9. Mostrar el título del libro cuando tenga más de dos autores.
    
    `for $x in doc("books")/bookstore/book
where count($x/author/node()) > 2
return $x/title/text()`
   
   Resultado:
   
   ```Xpath
        XQuery Kick Start
    ```

10.  Trasformar los datos a un archivo XML con el siguiente contenido, donde el atributo autores indica 
el número de autores de cada libro
    
    `<libros>
  {
  for $x in doc("books")/bookstore/book
  return <libro autores="{count($x/author)}">{$x/title}</libro>
  }
</libros>`
   
    Resultado:
   
    ```Xpath
         <libros>
    <libro autores="1">
        <title lang="en">Everyday Italian</title>
    </libro>
    <libro autores="1">
        <title lang="en">Harry Potter</title>
    </libro>
    <libro autores="5">
        <title lang="en">XQuery Kick Start</title>
    </libro>
    <libro autores="1">
        <title lang="en">Learning XML</title>
    </libro>
</libros>   
    ```