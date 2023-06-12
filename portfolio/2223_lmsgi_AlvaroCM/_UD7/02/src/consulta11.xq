let $books := doc('books')//book
return
  <result>
    {
    for $x in $books
    let $title:= $x/title/text()
    let $authors:= count($x/author)
    return
      <book>
        {concat($title, "(",$authors,")")}
      </book>
    }
  </result>
