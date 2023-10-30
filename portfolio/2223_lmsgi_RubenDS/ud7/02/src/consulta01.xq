for $x in doc("books")/bookstore/book
where $x/year=2005
return <lib205>{$x/title} {$x/author}</lib205>