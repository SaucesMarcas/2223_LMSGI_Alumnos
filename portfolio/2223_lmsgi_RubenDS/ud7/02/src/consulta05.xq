let $x := doc("books")/bookstore/book/title,
      $y := count($x)
  return
    <resultado>
    {$x} 
   <total_libros>{$y}</total_libros>
</resultado>