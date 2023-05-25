let $precioTotal := sum(doc("books")/bookstore/book/price)
  return
<total>
  {$precioTotal}
</total>