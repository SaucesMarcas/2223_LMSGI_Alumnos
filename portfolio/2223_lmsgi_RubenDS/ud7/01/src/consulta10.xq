<libros>
{
  for $x in doc("books")/bookstore/book
  let $f := count($x/author)
  return <libro autores="{$f}">{$x/title/text()}</libro>
}

</libros>