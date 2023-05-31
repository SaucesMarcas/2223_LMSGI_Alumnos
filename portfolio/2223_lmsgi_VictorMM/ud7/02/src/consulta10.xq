<resultado>
{
for $x in doc("books")/bookstore/book
return
  <libro>
    <titulo>{$x/title/text()}</titulo>
    <numero_autores>{count($x/author)}</numero_autores>
  </libro>
  }
</resultado>