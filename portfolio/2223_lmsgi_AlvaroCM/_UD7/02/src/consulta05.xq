let $books := doc('books')//book
return
  <result>
    {for $book in $books
    return <title>{$book/title/text()}</title>}
    <total>{count($books)}</total>
  </result>
