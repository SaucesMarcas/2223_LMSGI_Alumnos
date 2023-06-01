for $x in doc("book")/bookstore/book
where contains(upper-case($x/title/text()),"X")
order by $x/title/text() descending 
return <libro>{$x/title/text()}</libro>