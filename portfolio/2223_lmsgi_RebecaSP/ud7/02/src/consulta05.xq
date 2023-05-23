<resultado>
{
let $x := doc("books")/bookstore/book/title, $y := count(doc("books")/bookstore/book)
return $x
}
</resultado>
