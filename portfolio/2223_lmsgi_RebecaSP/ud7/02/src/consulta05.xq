<resultado>
{
  for $x in doc("books")/bookstore/book, 
  $y in count(doc("books")/bookstore/book)
  return <titulo>{$x/title/text()}</titulo><total>{$y}</total>
}
</resultado>
