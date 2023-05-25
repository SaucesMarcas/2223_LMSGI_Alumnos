for $x in doc("books")/bookstore/book
order by $x/category,$x/title
return $x