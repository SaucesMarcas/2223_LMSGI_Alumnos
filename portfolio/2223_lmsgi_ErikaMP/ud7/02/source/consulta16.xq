for $x in distinct-values(doc("book")/bookstore/book/year)
return <año>{$x}</año>