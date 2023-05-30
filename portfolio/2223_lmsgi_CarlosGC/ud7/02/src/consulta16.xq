for $year in distinct-values(doc("books")/bookstore/book/year)
return <año>{$year}</año>