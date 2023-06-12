let $books := doc('books')//book[contains(title/text(), 'X') or contains(title/text(), 'x')]
return
    for $x in $books
    order by $x/title/text() descending
    return $x/title/text()
