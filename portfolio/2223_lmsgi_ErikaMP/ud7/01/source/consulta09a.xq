for $x in doc("books")/bookstore/book
let $f := $x/author
where count($f)>2
return $x/title/text()