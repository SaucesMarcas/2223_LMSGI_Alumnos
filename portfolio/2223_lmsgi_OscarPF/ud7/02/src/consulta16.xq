<resultado>{
for $x in distinct-values(doc('books')/bookstore/book/year)

return 
  <año>
    {$x}
  
  </año>
}</resultado>