for $x in /bookstore/book
where ends-with($x/year, "3")
return $x
