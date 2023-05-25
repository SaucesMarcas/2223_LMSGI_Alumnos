let $x :=doc("books")/bookstore/book/price
return
<precios> 
  <precio_minimo>{min($x)}</precio_minimo>
  <precio_maximo>{max($x)}</precio_maximo>
</precios>