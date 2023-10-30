for $x in doc("books")/bookstore/book 

return 
<libros>
<libro>
 {data($x/title)}({count($x/author)})
</libro>
</libros>