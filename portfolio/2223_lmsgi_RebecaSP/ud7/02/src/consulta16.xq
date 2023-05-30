<resultado>
{
  for $x in distinct-values(doc("books")//book/year)
  return <anyo>{$x}</anyo>
}
</resultado>