<resultado>
{
  for $x in doc("books")//book
  return 
    <libro>
      {
        concat($x/title/text(),"(numero autores: ",count($x/author),")")
      }
    </libro>
}
</resultado>
