(:10. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)
<result>
{
for $x in doc('books')//book
return
  <libro>
    <titulo>{$x/title/text()}</titulo>
    <numAutores>{count($x/author)}</numAutores>
  </libro>
}
</result>