<libros>
  {
    let $x := doc("book")/bookstore/book/price
    return $x
  }
  <total>
    {
      let $x := sum(doc("book")/bookstore/book/price)
      return $x
    }
  </total>
</libros>