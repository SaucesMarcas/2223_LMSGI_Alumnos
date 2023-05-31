let $precio := sum(doc('books')//price/text())
   
return 
<total>
  {$precio}
</total>