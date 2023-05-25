for $x in doc("books")/bookstore/book order by 1.04*data($x/price)
  return
  <libro>
    {$x/title}
    {$x/price}
    <precioIVA>{1.04*data($x/price)}</precioIVA>
  </libro>