<libros>
  {
    for $x in doc("books")/bookstore/book
    return <titulo>{$x/title/text()}</titulo>
  }
  <total>
    {
      for $x in doc("books")/bookstore
      let $f := count($x/book)
      return $f
    }
  </total>
</libros>

(:
<libros>
  {
     let $x := doc("books")/bookstore/book/title
     return $x
  }
  <total>
    {
      for $x in doc("books")/bookstore
      let $f := count($x/book)
      return $f
    }
  </total>
</libros>

<libros>
  {
     let $x := doc("book")/bookstore/book/title,
     $i := count(doc("book")/bookstore/book)
     return $ $i
  }
</libros>

<libros>
  {
    let $x := (
    for $f in doc("book")/bookstore/book
      return <titulo>{$f/title/text()}</titulo>), 
    $i := count(doc("book")/bookstore/book)
    return {$x}<total>{$i}</total>
  }
</libros>
:)




