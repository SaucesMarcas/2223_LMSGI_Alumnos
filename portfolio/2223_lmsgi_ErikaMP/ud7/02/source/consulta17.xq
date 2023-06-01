for $x in distinct-values(doc("book")/bookstore/book/author)
order by string-length($x)
return $x