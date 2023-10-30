<libros>
{
  
  
for $x in doc("books")/bookstore/book/title/text() order by $x
return if($x/../../@category="children")
then<children>{$x}</children>
else<adult>{$x}</adult>
  
  
}
</libros>