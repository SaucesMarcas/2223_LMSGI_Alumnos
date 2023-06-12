<libros>
{
for $x in doc("books")/bookstore/book/title order by $x
return <libro autores="{count($x/../author)}">{data($x)}</libro>
}
</libros>