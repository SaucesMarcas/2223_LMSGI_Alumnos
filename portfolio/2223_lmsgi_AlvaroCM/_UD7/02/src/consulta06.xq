let $prices := doc('books')//book/price/number()
return concat("Minimo:",string(min($prices))," ", "Maximo:",string(max($prices)))
