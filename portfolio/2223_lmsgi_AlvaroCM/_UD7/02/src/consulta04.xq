for $x in doc("books")/bookstore
let $a:= count($x/book)
return concat($x/book/title/text(),
              <total>{$a}</total>)
