<resultado>
{
  for $x in doc("books")//book
  let $y := string-length($x/title)
  return 
    <libro>
      {$x/title}
      <numero_caracteres>{$y}</numero_caracteres>
    </libro>
}
</resultado>