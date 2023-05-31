let $x := doc("books")/bookstore/book/price
return <total>{sum($x)}</total>