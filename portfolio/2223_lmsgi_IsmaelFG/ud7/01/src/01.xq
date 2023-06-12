for $x in doc("books")/bookstore/book/title/text() order by $x
return $x 