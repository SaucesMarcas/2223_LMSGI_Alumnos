for $x in doc("books")/bookstore/book
where $x/year=2005
return <lib2005>{$x/title} {$x/author}</lib2005>