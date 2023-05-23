for $x in doc("books")/bookstore/book
where $x/price>30
order by $x/title
return $x/title/text()