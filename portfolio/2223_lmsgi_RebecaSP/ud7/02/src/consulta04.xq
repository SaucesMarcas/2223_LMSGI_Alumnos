<total>
{
for $x in doc("books")/bookstore
return count($x/book)
}
</total>

(:
<total>
{
let $x := count(doc("books")/bookstore/book)
return $x
}
</total>
:)