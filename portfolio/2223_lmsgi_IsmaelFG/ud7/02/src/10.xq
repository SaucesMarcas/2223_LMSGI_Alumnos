for $x in doc("books")/bookstore/book 

return 
<libros>
<libro>
 {$x/title}
 <autores>{count($x/author)}</autores>
</libro>
</libros>