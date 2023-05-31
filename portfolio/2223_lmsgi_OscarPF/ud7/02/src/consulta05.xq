let $total := count(doc('books')/bookstore/book),
    $titulos := (for $l in doc('books')/bookstore/book/title
                return $l)
return 
<resultado>
{$titulos}
<total>{$total}</total>
</resultado>