for $x at $i in doc("books")/bookstore/book/title/text()
return <book>{$i}. {$x}</book>