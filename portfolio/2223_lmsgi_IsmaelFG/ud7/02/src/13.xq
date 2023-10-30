for $x in doc("books")/bookstore/book where starts-with(upper-case($x/@category),"C")

return $x

  