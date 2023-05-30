for $x in distinct-values(doc("books")/bookstore/book/author) 
  order by string-length($x)
  return $x
