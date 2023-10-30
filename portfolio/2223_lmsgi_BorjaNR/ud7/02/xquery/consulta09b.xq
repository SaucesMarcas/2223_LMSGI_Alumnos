(:9. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios:)
let $prices := doc('books')//book/price
return
  <result>
    {$prices}
    <total>{sum($prices)}</total>
  </result>