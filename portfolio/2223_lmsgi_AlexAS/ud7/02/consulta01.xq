for $x in doc("books")/bookstore/book
where $x/year=2005
return
<lib2005> 
{$x/title/text()}, {$x/author/text()}
</lib2005>