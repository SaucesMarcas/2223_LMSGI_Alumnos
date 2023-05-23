<libros>
  {
    for $x in doc("books")/bookstore/book
    let $r := count($x/author)
    return <libro autores="{$r}">{$x/title/text()}</libro>
  }
</libros>