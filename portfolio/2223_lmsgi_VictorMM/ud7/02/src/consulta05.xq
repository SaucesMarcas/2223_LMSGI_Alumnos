<resultado>
{
  let $x :=doc("books")/bookstore/book
  return <title>{($x)}</title>
  <total_libros>{count($x/book)}</total_libros>
}
</resultado>