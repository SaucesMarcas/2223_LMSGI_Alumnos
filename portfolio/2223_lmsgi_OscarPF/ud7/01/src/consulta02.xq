for $x in doc("books")/bookstore/book
where $x/price>30
order by $x/title/text()
return $x/title/text() 