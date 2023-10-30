let $x := doc("books")/bookstore/book
let $books-with-iva :=
  for $x in $x/book
  let $price := xs:decimal($x/price)
  let $price-with-iva := $price + ($price * 0.19)  (: IVA del 19% :)
  order by $price-with-iva ascending
  return
    <book>
      {$x/title/text()}
      <price>{$price}</price>
      <price-with-iva>{$price-with-iva}</price-with-iva>
    </book>

return
  <bookstore>
    {$books-with-iva}
  </bookstore>