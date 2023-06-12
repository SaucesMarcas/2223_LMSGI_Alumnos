let $prices := sum(doc('books')//book/price/text())
return
    <total>{$prices}</total>
