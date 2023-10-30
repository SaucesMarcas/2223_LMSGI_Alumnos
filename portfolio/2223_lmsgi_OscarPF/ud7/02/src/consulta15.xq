<resultado>{
for $x in doc('books')//book
let $y := string-length($x/title)
return 
  <libro>
    {$x/title}
  <numcaracteres>{$y}</numcaracteres>
  </libro>
}</resultado>