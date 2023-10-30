let $x := doc("books")/bookstore/book
return
  <bookstore>
      <book>
        <title>{$x/title}</title>
        <author>{count($x/author)}</author>
      </book>
  </bookstore>