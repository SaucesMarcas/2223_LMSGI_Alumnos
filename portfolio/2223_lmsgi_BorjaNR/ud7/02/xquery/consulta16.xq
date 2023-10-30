(:16. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétalos con "año".:)
<result>
{
  for $year in distinct-values(/bookstore/book/year)
  return <anyo>{$year}</anyo>
}
</result>