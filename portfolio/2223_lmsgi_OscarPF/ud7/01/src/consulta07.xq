<books>
{
  for $x at $contador in doc('books')/bookstore/book
  return <book>{concat($contador,".")} {$x/title/text()}</book>
}
</books>