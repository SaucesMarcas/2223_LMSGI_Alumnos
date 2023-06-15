# Unidad 7.2 XQUERY BOOKS

1. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con “lib2005”
   
   `for $x in doc("books")/bookstore/book
    where $x/year=2005
    return <lib2005>{$x/title}{$x/author}</lib2005>`
   
   Resultado:
   
   ```Xpath
    <lib2005><title lang="en">Everyday Italian</title><author>Giada De Laurentiis</author></lib2005>
    <lib2005><title lang="en">Harry Potter</title><author>J K. Rowling</author></lib2005>
    ```

2. Mostrar los años de publicación, primero con for y luego con let. Etiquetar la salida con publicación
    
    `<publicacion>
    {
      for $x in doc("books")/bookstore/book
    return $x/year
    }
    </publicacion>


    (:let $a := doc("books")/bookstore/book
    return <publicacion>{$a/year}</publicacion>:)`
   
   Resultado:
   
   ```Xpath
    <publicacion><year>2005</year><year>2005</year><year>2003</year><year>2003</year></publicacion>
    ```

3. Mostrar los libros ordenador primero por “category” y luego por “title” en una sola consulta.

    `for $x in doc("books")/bookstore/book
    order by $x/category,$x/title
    return $x`
   
   Resultado:
   
   ```Xpath
    <book category="cooking">
    <title lang="en">Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>30.00</price>
  </book>
<book category="children">
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
<book category="web" cover="paperback">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>
<book category="web">
    <title lang="en">XQuery Kick Start</title>
    <author>James McGovern</author>
    <author>Per Bothner</author>
    <author>Kurt Cagle</author>
    <author>James Linn</author>
    <author>Vaidyanathan Nagarajan</author>
    <year>2003</year>
    <price>49.99</price>
  </book>
    ```

4. Mostrar cuántos libros hay, y etiquetarlo con “total”

    `<total>
    {
      let $x := count(doc("books")/bookstore/book)
      return $x
    }
    </total>`
   
   Resultado:
   
   ```Xpath
    <total>4</total>
    ```

5. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros

    `  <total>
  {
    let $total := count(doc("books")/bookstore/book),  $titulos := (for $t in doc("books")/bookstore/book/title
  return $t)
       
    return
    <resultado>
      {$titulos}
      <total_libros>{$total}</total_libros>
    </resultado>
  }
  </total>`
   
   Resultado:
   
   ```Xpath
    <total>
    <resultado>
        <title lang="en">Everyday Italian</title>
        <title lang="en">Harry Potter</title>
        <title lang="en">XQuery Kick Start</title>
        <title lang="en">Learning XML</title>
        <total_libros>4</total_libros>
    </resultado>
</total>
    ```

6. Mostrar el precio mínimo y el máximo de los libros

    `let $precioMax := max(doc("books")/bookstore/book/price), $precioMin := min(doc("books")/bookstore/book/price)
    return concat('Precio maximo: ',$precioMax,' y Precio minimo: ',$precioMin)`
   
   Resultado:
   
   ```Xpath
    Precio maximo: 49.99 y Precio minimo: 29.99
    ```

7. Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta.
Ordenado de precio con IVA

    `for $x in doc("books")/bookstore/book order by 1.04*data($x/price)
  return
  <libro>
    {$x/title}
    {$x/price}
    <precioIVA>{1.04*data($x/price)}</precioIVA>
  </libro>`
   
   Resultado:
   
   ```Xpath
    <libro><title lang="en">Harry Potter</title><price>29.99</price><precioIVA>31.1896</precioIVA></libro>
    <libro><title lang="en">Everyday Italian</title><price>30.00</price><precioIVA>31.200000000000003</precioIVA></libro>
    <libro><title lang="en">Learning XML</title><price>39.95</price><precioIVA>41.548</precioIVA></libro>
    <libro><title lang="en">XQuery Kick Start</title><price>49.99</price><precioIVA>51.9896</precioIVA></libro>
    ```

8. Mostrar la suma total de los precios con la etiqueta total

    `let $precioTotal := sum(doc("books")/bookstore/book/price)
        return
      <total>
        {$precioTotal}
      </total>`
   
   Resultado:
   
   ```Xpath
    <total>149.93</total>
    ```

9. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios.

    `let $y := (for $x in doc("books")/bookstore/book/price return $x)

return
<libros>{$y}
  <total>{sum($y)}</total>
</libros>`
   
   Resultado:
   
   ```Xpath
    <libros>
        <price>30.00</price>
        <price>29.99</price>
        <price>49.99</price>
        <price>39.95</price>
        <total>149.93</total>
    </libros>
    ```

10. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.

    `<resultado>
{
for $x in doc("books")/bookstore/book
return
 <libro>
    <titulo>{$x/title/data()}</titulo>
    <autor>{count($x/author)}</autor>
 </libro>
}
</resultado>`
   
   Resultado:
   
   ```Xpath
    <resultado>
        <libro>
            <titulo>Everyday Italian</titulo>
            <autor>1</autor></libro>
        <libro>
            <titulo>Harry Potter</titulo>
            <autor>1</autor></libro>
        <libro>
            <titulo>XQuery Kick Start</titulo>
            <autor>5</autor></libro>
        <libro>
            <titulo>Learning XML</titulo>
            <autor>1</autor>
        </libro>
    </resultado>
    ```

11. Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título

    `<resultado>
    {
    for $x in doc("books")/bookstore/book
    return
        <titulo>{$x/title/data()}({count($x/author)})</titulo>
    }
    </resultado>`
   
   Resultado:
   
   ```Xpath
    <resultado>
        <titulo>Everyday Italian(1)</titulo>
        <titulo>Harry Potter(1)</titulo>
        <titulo>XQuery Kick Start(5)</titulo>
        <titulo>Learning XML(1)</titulo>
    </resultado>
    ```

12. Mostrar los libros escritos en años que terminan en “3”

    `<resultado>
    {
    for $x in doc("books")/bookstore/book/year
    return
        if("3"=substring($x,4)){
          $x/../title
        } 
    }
    </resultado>`
   
   Resultado:
   
   ```Xpath
    <resultado>
        <title lang="en">XQuery Kick Start</title>
        <title lang="en">Learning XML</title>
    </resultado>
    ```

13. Mostrar los libros cuya categoría empiece por C

    `<resultado>
    {
    for $x in doc("books")/bookstore/book[starts-with(lower-case(@category),'c')]
    return
         $x/title 
    }
    </resultado>`
   
   Resultado:
   
   ```Xpath
    <resultado>
        <title lang="en">Everyday Italian</title>
        <title lang="en">Harry Potter</title>
    </resultado>
    ```

14. Mostrar los libros que contenga una X mayúscula o minúscula en el título ordenados de manera

    `<resultado>
        {
        for $x in doc("books")/bookstore/book[contains(lower-case(title/text()),'x')]
         order by $x/title descending
        return
             $x/title
        }
    </resultado>`
   
   Resultado:
   
   ```Xpath
    <resultado>
        <title lang="en">XQuery Kick Start</title>
        <title lang="en">Learning XML</title>
    </resultado>
    ```

descendente
15. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.

    `<resultado>
        {
        for $x in doc("books")/bookstore/book
        let $f := string-length($x/title)
        return
             <libro>
             {$x/title}
             <numero_caracteres>{$f}</numero_caracteres>
             </libro>
        }
    </resultado>`
   
   Resultado:
   
   ```Xpath
    <resultado>
        <libro>
            <title lang="en">Everyday Italian</title>
            <numero_caracteres>16</numero_caracteres>
        </libro>
        <libro>
            <title lang="en">Harry Potter</title>
            <numero_caracteres>12</numero_caracteres>
        </libro>
        <libro>
            <title lang="en">XQuery Kick Start</title>
            <numero_caracteres>17</numero_caracteres>
        </libro>
        <libro>
            <title lang="en">Learning XML</title>
            <numero_caracteres>12</numero_caracteres>
        </libro>
    </resultado>
    ```

16. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétalos con
"año".

    `for $year in distinct-values(doc("books")/bookstore/book/year)
return <aÃ±o>{$year}</aÃ±o>`
   
   Resultado:
   
   ```Xpath
    <aÃ±o>2005</aÃ±o>
    <aÃ±o>2003</aÃ±o>
    ```

17. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres
que tiene cada autor.

    `for $x in distinct-values(doc("books")/bookstore/book/author) 
    order by string-length($x)
    return $x`
   
   Resultado:
   
   ```Xpath
    Kurt Cagle
    James Linn
    Per Bothner
    Erik T. Ray
    J K. Rowling
    James McGovern
    Giada De Laurentiis
    Vaidyanathan Nagarajan
    ```

18. Listar titulos de los libros:

    `<html lang="es">
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
    </html>`
   
   Resultado:
   
   ```Xpath
    <html lang="es">
    <head>
        <meta charset="UTF-8"/>
        <title>UD07.2.18 Listado de Practicas Carlos G</title>
        <link rel="stylesheet" href="../src/estilo.css"/>
    </head>
    <body>
        <table>
            <tr>
                <td>Everyday Italian</td>
            </tr>
            <tr>
                <td>Harry Potter</td>
            </tr>
            <tr>
                <td>XQuery Kick Start</td>
            </tr>
            <tr>
                <td>Learning XML</td>
            </tr>
        </table>
    </body>
</html>
    ```