<resultado>
{
  for $x in doc("books")//book
  where ends-with($x/year, '3')
  return $x/title
}
</resultado>