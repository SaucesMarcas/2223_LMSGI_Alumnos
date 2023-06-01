for $x in doc("book")/bookstore/book
where substring(lower-case($x/@category),1,1)="c"
return <libro>{$x/title/text()}</libro>