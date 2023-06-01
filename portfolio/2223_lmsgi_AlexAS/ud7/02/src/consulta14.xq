<resultado>
{
  for $x in doc("books")/bookstore/book[contains(lower-case(title),'x')]
  order by $x/title
  return
    $x/title
}
</resultado>