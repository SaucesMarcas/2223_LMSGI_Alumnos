let $precioMax := max(doc("books")/bookstore/book/price), $precioMin := min(doc("books")/bookstore/book/price)
return concat('Precio maximo: ',$precioMax,' y Precio minimo: ',$precioMin)

 