for $x in doc("books")/bookstore/book where
contains($x/title,"X") or 
contains($x/title,"x") 
order by $x/title descending 


return $x