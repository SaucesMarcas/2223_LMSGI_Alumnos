for $x in doc("books")/bookstore/book order by 1.04*data($x/price)
  return
  <libro>
    {$x/title}
    {$x/price}
    <precioIVA>{1.04*data($x/price)}</precioIVA>
    <precioIVA2>{($x/price)+0.04*data($x/price)}</precioIVA2>
  </libro>