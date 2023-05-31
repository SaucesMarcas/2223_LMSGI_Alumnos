<books>
{
   for $x at $i in doc("books")/bookstore/book 
   return <book>{$i}.{data($x/title)}</book>

}
</books>
