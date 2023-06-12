<libros>
{
  for $libro in /bookstore/book
  return $libro/price
}
{
  let $libros := /bookstore/book
  return <total>{sum($libros/price)}</total>
}
</libros>