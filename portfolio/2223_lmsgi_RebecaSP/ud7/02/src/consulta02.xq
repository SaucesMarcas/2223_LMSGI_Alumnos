<publicacion>
{
for $x in doc("books")/bookstore/book
return $x/year
}
</publicacion>

(:
let $a := doc("books")/bookstore/book
return <publicacion>{$x/year}</publicacion>
:)