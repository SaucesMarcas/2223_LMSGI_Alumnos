for $x in doc("books")/bookstore/book
where count($x/author)>2
return $x/title/text()