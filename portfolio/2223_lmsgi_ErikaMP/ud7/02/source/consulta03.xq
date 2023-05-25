for $x in doc("book")/bookstore/book
order by $x/category, $x/title
return $x