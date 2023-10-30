<resultado>{for $x in doc('books')/bookstore/book

return 
  <libros>{$x/title/text()}({count($x/author)})
  </libros>}
  
</resultado>