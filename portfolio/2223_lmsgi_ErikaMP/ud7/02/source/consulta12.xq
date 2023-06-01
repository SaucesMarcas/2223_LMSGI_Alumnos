for $x in doc("book")/bookstore/book
where substring($x/year/text(),4,1)="3"
return <libro>{$x/title/text()}</libro> 