for $x in doc('books')/bookstore/book,
    $y in 1.04*data($x/price)
order by $y descending    
return 
<libro>
  {$x/title}
  {$x/price}
  <precioIva>{format-number($y,"0.00")}</precioIva>
</libro>