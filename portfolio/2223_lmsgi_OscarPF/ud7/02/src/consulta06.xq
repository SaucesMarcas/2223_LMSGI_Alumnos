let $x := doc('books')/bookstore/book/price    
return <resultado>
<precioMinimo>{min($x)}</precioMinimo>
<precioMaximo>{max($x)}</precioMaximo>
</resultado>