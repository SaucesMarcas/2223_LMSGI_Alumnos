<resultado>
{
  for $x in doc("books")//book
  return 
    <libro>
      <titulo>{$x/title/text()}</titulo>
      <autores>{count($x/author)}</autores>
    </libro>
}
</resultado>
