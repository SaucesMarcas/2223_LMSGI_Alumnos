<resultado>
{
for $x in doc("books")/bookstore/book
return
  <libro>
   {concat($x/title/text(), '(',count($x/author),')')}
  </libro>
  }
</resultado>