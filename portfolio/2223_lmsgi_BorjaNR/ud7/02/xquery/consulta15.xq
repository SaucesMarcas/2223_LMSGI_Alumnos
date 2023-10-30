(:15. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.:)
<result>
{
  for $x in doc('books')//book
  let $f := string-length($x/title/text())
  return
    <libro>
      {$x/title}
      <numeroCaracteres>{$f}</numeroCaracteres>
    </libro>
}
</result>