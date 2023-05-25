<books>
  {
    for $x at $h in doc("books")/bookstore/book
    return <book>{concat($h,". ",$x/title/text())}</book>
  }
</books>
