(:14. Mostrar los libros que contenga una X mayúscula o minúscula en el título ordenados de manera descendente:)
<result>
{
  for $x in doc('books')//book[contains(title,"x") or contains(title,"X")]
  order by $x/title descending
  return $x/title
}
</result>