for $x in doc("books")/bookstore/book 
order by $x/@category,$x/title
where $x/price>30.00
return concat(data($x/title),":",data($x/price),"$")