let $x := max(/bookstore/book/price),
    $y := min(/bookstore/book/price)
return
  <resultado>
    <maximo>
      {$x}
    </maximo>
    <minimo>
      {$y}
    </minimo>
  </resultado>