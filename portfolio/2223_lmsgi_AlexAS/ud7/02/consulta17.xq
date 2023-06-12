for $x in distinct-values(/bookstore/book/author)
order by string-length($x)
return <autor>{$x}</autor>