for $x in doc("books")/bookstore
let $a:= count($x/book)
return {($x/book/title/text())}<total>{$a}</total>
