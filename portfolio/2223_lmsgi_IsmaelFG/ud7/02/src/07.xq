for $x in doc("books")/bookstore/book,
    $y in 1.04*data($x/price) 
order by $y descending
  return 
<libro>
    {$x/title}
    {$x/price}
   <precioIVA>{format-number($y,"0.00"),"€"}
   </precioIVA>
</libro>