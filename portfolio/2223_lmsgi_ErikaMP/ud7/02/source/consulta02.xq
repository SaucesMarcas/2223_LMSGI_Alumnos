for $x in doc("book")/bookstore/book
return <publication>{$x/year/text()}</publication>

(:
  let $a := in doc("book")/bookstore/book
  return <publication>{$x/year}</publication>
:)