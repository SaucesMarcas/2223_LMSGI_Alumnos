<resultado>
{
  for $x in distinct-values(doc("books")//book/author)
  order by string-length($x)
  return <anyo>{$x}</anyo>
}
</resultado>