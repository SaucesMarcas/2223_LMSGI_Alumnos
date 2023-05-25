let $x := sum(doc("book")/bookstore/book/price)
return <preciototal>{$x}</preciototal>