<total>
{
  let $x := count(doc("books")/bookstore/book)
  return $x
}
</total>