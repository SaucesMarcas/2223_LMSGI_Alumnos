<libros>
{
  for $x in doc('books')/bookstore/book
  return <libro autores="{$f}">{concat($y,". ",$x/title/text())}</book>
}
</libros>
