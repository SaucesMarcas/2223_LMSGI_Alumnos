for $x in doc("books")/bookstore/book
let $a:= $x/year/text()
return <publicacion>{$a}</publicacion>

