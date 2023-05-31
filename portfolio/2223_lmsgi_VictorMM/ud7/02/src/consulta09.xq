<libros>
  {
    for $x in doc("books")/bookstore/book/price
    return 
    
      <precio>{$x}</precio>
   
  }
  <total>
    {
      let $t := sum(doc("books")/bookstore/book/price)
      return $t
    }
  </total>
</libros>

(:
let $price := doc("books")//book/price 

return
<result>
  {$prices}
  <total> {sum($prices)}</total>
</result>
:)