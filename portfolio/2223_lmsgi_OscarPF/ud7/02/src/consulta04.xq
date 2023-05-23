<total>{
for $libro in doc('books')/bookstore
let $a := count($libro/book)
return $a
}</total>