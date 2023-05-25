for $x in doc("book")/bookstore
let $f := count($x/book)
return <total>{$f}</total>