let $books := doc('books')//book[starts-with(@category, 'c')]
return
    for $x in $books
    return $x/title/text()
