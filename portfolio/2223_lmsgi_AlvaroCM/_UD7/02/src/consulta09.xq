let $prices := doc('books')//book/price
return
  <result>
    {$prices}
    <total>{sum($prices)}</total>
  </result>
