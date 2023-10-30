let $titulos := (for $x in doc("books")/       bookstore/book/title return $x),
    $total := count(doc("books")/bookstore/    book)
    return
    <resultado>
    {$titulos}
    <total_libros>{$total}</total_libros>
    </resultado>