for $x in doc("books")/bookstore/book
order by $x/title
return $x/title/text()