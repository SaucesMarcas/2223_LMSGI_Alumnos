<resultado>{for $x in doc('books')/bookstore/book

return 
  <libros>{$x/title/text()}
    <autores>{count($x/author)}</autores>
  </libros>}
</resultado>