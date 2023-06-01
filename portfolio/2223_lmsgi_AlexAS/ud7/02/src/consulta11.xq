<resultado>
{
for $x in doc("books")//book
return
  <libro>
  {concat($x/title/text(),' (',count($x/author),')')}
  </libro>
}
</resultado>