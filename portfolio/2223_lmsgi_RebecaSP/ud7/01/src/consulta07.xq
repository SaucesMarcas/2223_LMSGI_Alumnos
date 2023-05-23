<books>
{
  for $x at $y in doc('books')/bookstore/book
  return <book>{concat($y,". ",$x/title/text())}</book>
}
</books>
