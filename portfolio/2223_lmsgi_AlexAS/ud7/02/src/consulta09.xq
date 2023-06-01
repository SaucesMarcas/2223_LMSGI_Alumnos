<resultado> 
{
  for $x in doc("books")/bookstore/book
  return
      <precio>{$x/price/text()}</precio>
  }
  {
    let $t := sum(doc("books")/bookstore/book/price)
    return <total>{$t}</total>
  }
</resultado>