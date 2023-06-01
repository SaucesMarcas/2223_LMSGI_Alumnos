for $x in doc("book")/bookstore/book
let $f := concat('(',count($x/author),')')
return 
  <libro>{$x/title/text()}{$f}</libro>