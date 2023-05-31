for $x in doc("books")/bookstore/book
order by $x/title/text()
return $x/title/text()
