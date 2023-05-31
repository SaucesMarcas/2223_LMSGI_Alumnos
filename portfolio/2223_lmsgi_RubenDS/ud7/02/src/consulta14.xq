let $x := doc("books")/bookstore/book/title

return
  <bookstore>
    {
    for $book in /bookstore/book
    where contains($book/title, "x") or contains($book/title, "X")
    order by $book/title descending
    return $book
    }
  </bookstore>