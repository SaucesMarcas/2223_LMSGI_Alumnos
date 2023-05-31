  for $libro in doc('books')/bookstore/book
  order by $libro/category, $libro/title  
  return $libro
