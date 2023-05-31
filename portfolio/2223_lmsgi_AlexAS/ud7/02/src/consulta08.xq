let $prices := doc("books")//sum(book/price/text())
return
<total>{sum($prices)}</total>