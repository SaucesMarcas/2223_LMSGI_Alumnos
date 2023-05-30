<resultado>
{
  for $x in doc("books")//book
  where starts-with(lower-case($x/@category),'c')
  return $x/title
}
</resultado>