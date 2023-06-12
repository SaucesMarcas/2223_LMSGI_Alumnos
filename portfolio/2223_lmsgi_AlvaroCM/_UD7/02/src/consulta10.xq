let $books := doc('books')//book
return
  <result>
    {
    for $x in $books
    return
      <book>
        <title>{$x/title/text()}</title>
        <author_count>{count($x/author)}</author_count>
      </book>
    }
  </result>
