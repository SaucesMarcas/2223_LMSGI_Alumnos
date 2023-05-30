<resultado>
{
for $x in doc("books")/bookstore/book
return
    <titulo>{$x/title/data()}({count($x/author)})</titulo>
}
</resultado>