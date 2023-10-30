(:9. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios:)
<resultado>
{
  for $x in doc('books')/bookstore/book
  return
    <libro>
      <precio>{$x/price/text()}</precio>
    </libro>
}
{
  let $t := sum(doc('books')/bookstore/book/price)
  return <total>{$t}</total>
}
</resultado>