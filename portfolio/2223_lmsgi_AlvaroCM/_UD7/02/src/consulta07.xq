let $books := doc('books')//book
return
  <result>
    {
    for $book in doc('tiempo')//data
    let $price := xs:decimal($book/price)
    let $price_con_iva := $price * 1.04
    order by $price_con_iva
    return
      <book>
        <title>{$book/title/text()}</title>
        <price>{$price}</price>
        <price_con_iva>{$price_con_iva}</price_con_iva>
      </book>
    }
  </result>
