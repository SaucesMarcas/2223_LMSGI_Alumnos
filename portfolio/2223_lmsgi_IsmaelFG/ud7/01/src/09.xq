for $x in doc("books")/bookstore/book/title order by $x
where count($x/../author)>2
return data($x) 