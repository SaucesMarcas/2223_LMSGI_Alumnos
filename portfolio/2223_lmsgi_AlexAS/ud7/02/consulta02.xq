(:for $x in doc("books")/bookstore/book
return 
<publicacion>
  {$x/year/text()}
</publicacion>
:)

let $x := /bookstore/book
return 
<publicacion>
  {$x/year}
</publicacion>