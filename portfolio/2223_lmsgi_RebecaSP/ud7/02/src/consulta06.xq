<libro>
  {
    let $x := doc("book")/bookstore/book/price
    return 
      <precio>
        <min>{min($x)}</min>
        <max>{max($x)}</max>
      </precio>
  }
</libro>