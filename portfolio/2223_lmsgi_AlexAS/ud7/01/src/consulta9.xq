for $book in doc("books")/bookstore/book
let $a := $book/author
where count($a)>2
return $book/title/text()