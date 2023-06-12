let $books := doc('books')//book
return
  <result>
    {
    for $x in $books
    return
      <book>
        <title>{$x/title/text()}</title>
        <caracteres>{string-length($x/title)}</caracteres>
      </book>
    }
  </result>
