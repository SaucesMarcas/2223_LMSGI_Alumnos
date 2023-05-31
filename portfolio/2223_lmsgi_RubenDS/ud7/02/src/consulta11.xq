let $x := doc("books")/bookstore/book/title

return
  <bookstore>
    for $book in $x/book
    return
      <book>
        let $title := $book/title
        let $author-count := count($book/author)
        return
          concat($title,($author-count))
      </book>
  </bookstore>