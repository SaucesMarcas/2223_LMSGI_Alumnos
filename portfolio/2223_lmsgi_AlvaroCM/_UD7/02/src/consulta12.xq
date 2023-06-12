let $books := doc('books')//book
return
    for $x in $books
    where ends-with($x/year, '3')
    return $x/title/text()
