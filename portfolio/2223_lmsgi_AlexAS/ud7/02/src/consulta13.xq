<resultado>
{
  for $x in doc("books")/bookstore/book[starts-with(lower-case(@category), 'c')]
  return
    $x/title
}
</resultado>