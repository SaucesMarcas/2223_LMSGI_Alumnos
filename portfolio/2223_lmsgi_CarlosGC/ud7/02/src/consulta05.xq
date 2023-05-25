  <total>
  {
    let $total := count(doc("books")/bookstore/book),  $titulos := (for $t in doc("books")/bookstore/book/title
  return $t)
       
    return
    <resultado>
      {$titulos}
      <total_libros>{$total}</total_libros>
    </resultado>
  }
  </total>