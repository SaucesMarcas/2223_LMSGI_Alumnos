for $x in doc("books")/bookstore/book


return if("3"=substring($x/year,4)){
  $x
}
  
  

  
