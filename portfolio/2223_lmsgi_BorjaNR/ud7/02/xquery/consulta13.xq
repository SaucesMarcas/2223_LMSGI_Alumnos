(:13. Mostrar los libros cuya categoría empiece por C:)
<result>
{
  for $x in doc('books')//book[starts-with(upper-case(@category),"C")]
  return $x/title
}
</result>