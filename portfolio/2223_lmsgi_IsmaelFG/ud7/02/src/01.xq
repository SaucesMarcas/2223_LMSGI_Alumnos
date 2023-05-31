for $x in doc("books")/bookstore/book
where $x/year=2005
return <lib2005>{data($x/title)} {data($x/author)}</lib2005>