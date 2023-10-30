(:12. Mostrar los libros escritos en años que terminan en “3”:)
<result>
{
  for  $x in doc('books')//book
  where ends-with($x/year,'3')
  return $x/title 
}
</result>
