<books>
  {
    for $x at $at in doc("books")/bookstore/book
    return <book>{concat($at,".",$x/title/text())}</book>
  }
</books>
