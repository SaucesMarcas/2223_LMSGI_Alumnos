  for $x in distinct-values(doc('books')//author)
    order by string-length($x)
    return $x
