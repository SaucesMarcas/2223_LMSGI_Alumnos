for $x in doc("books")/bookstore/book/title/text() order by $x
where $x/../../price>30.00
return $x 