<libros>
  {
  for $x in doc("books")/bookstore/book
  return <libro autores="{count($x/author)}">{$x/title}</libro>
  }
</libros>
