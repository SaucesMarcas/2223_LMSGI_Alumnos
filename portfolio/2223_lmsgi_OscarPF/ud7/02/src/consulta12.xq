<resultado>{
for $x in doc('books')/bookstore/book/year

return 
  if("3"=substring($x,4)){
    $x/../title}
  

}</resultado>