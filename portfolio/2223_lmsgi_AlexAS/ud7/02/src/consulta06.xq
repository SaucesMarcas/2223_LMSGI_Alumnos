let $max := max(for $x in doc("books")/bookstore/book/price return $x),
    $min := min(for $x in doc("books")/bookstore/book/price return $x)
    return
    <resultado>
    <precio_maximo>{$max}</precio_maximo>
    <precio_minimo>{$min}</precio_minimo>
    </resultado>