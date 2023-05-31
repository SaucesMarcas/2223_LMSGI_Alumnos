let $x := sum(doc("books")/bookstore/book/price)
return <preciototal>{$x}</preciototal>