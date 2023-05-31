let $x := doc("books")/bookstore/book
let $prices := $x/book/price
let $total-price := sum($prices)

return
  <bookstore>
    {for $price in $prices
    return
      <price>{$price}</price>}
    <total>{$total-price}</total>
  </bookstore>