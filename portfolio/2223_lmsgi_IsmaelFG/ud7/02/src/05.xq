

let $y :=(for $x in doc("books")/bookstore/book/title
  return $x)
  
  return 
  <libros>{$y}
    <total>{count($y)}</total>
  </libros>


