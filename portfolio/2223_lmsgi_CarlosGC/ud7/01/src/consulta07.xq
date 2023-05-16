<books>
{
  for $x at $i in doc('books')/bookstore/book 
  return <book>{concat($i,'. ',$x/title/text())}</book>
}
</books>