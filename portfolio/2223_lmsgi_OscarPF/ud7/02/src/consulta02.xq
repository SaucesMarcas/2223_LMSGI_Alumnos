  <publicacion>{
    for $libro in doc('books')/bookstore/book  
    return $libro/year
  }
  </publicacion>
  