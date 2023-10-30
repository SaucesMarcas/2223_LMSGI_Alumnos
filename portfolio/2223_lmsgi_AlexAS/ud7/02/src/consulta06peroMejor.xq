let $x := doc("books")/bookstore/book/price
  return
    <resultado>
    <precio_maximo>{max($x)}</precio_maximo>
    <precio_minimo>{min($x)}</precio_minimo>
    </resultado>