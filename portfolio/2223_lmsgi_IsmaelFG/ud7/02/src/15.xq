for $x in doc("books")/bookstore/book/title

return 
<libros>
<libro>
 {$x}
 <caracteres>{string-length($x)}</caracteres>
</libro>
</libros>