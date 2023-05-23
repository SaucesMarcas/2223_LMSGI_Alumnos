  for $libro in doc('books')/bookstore/book
  let $a := $libro/author
  where count($a)>2
  return $libro/title/text()
