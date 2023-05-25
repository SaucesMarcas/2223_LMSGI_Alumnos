<libros>
  {
    let $x := doc("book")/bookstore/book/price
    return 
    <libro>
      <precio>{$x}</precio>
    </libro>
  }
  <total>
    {
      let $x := sum(doc("book")/bookstore/book/price)
      return $x
    }
  </total>
</libros>