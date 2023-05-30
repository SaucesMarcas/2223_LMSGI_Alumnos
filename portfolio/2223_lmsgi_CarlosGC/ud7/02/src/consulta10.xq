<resultado>
{
for $x in doc("books")/bookstore/book
return
 <libro>
    <titulo>{$x/title/data()}</titulo>
    <autor>{count($x/author)}</autor>
 </libro>
}
</resultado>