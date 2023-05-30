<resultado>
{
  for $x in doc("books")//book
  where contains(lower-case($x/title),'x')
  order by $x/title descending
  return $x/title
}
</resultado>