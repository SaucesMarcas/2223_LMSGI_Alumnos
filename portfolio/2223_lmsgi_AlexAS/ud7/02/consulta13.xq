for $x in doc("books")/bookstore/book[starts-with(@category, "c")]
return $x