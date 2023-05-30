<resultado>
{
for $x in doc("books")/bookstore/book
let $f := string-length($x/title)
return
     <libro>
     {$x/title}
     <numero_caracteres>{$f}</numero_caracteres>
     </libro>
}
</resultado>