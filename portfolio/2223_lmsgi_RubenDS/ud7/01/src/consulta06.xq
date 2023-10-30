for $x in doc("books")/bookstore/book
where $x/price>30
order by $x/@category,title descending
return concat($x/title/text(),":",$x/price/text(),"$")