let $y :=(for $x in doc('books')/bookstore/book/price return $x)

return 
  <libros>{$y}
    <total>{sum($y)}</total>
  </libros>