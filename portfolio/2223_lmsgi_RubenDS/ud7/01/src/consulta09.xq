for $x in doc("books")/bookstore/book
let $a := $x/author
where count($a)>2
return $x/title/text()