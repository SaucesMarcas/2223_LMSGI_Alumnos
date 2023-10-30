<libros>
{
  for $x in doc("books")/bookstore/book
  return if ($x/@category="children")
            then <children>{$x/title/text()}</children>
         else <adult>{$x/title/text()}</adult>
}
</libros>