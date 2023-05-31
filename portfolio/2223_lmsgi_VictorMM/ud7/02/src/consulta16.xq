<resultado>
{
for $x in distinct-values(/bookstore/book/year)

return
<año>{$x}</año>


}
</resultado>

