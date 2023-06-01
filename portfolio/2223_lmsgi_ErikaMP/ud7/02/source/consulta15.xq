for $x in doc("book")/bookstore/book
let $f := string-length($x/title/text())
return 
  <libro>
    {$x/title}
    <numero_caracteres>{$f}</numero_caracteres>
  </libro>