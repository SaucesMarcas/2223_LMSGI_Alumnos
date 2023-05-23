  (:for $libro in doc('books')/bookstore/book  
  return <publicacion>{$libro/year/data()}</publicacion>:)
  let $a := doc("books")/bookstore/book
  return <publicacion>{$a/year}</publicacion>
  