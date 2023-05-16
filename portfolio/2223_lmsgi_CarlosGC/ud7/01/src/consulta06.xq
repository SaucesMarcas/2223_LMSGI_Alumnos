for $x in doc("books")/bookstore/book
where $x/price > 30
order by $x/title descending, $x/@category descending
return concat($x/title/text(),' : ',$x/price/text(),'$')