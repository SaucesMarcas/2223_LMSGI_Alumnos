for $author in distinct-values(/bookstore/book/author)
order by string-length($author)
return <autor>{$author}</autor>