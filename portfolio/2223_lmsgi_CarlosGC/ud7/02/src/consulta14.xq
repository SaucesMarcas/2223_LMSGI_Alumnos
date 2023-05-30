<resultado>
{
for $x in doc("books")/bookstore/book[contains(lower-case(title/text()),'x')]
 order by $x/title descending
return
     $x/title
}
</resultado>