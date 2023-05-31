<libro>
  {
    let $x := doc("books")/bookstore/book/price
    return 
      <precio>
        <min>{min($x)}</min>
        <max>{max($x)}</max>
      </precio>
  }
</libro>