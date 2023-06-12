for $x in /bookstore/book
order by $x/price * 1.21
return 
<libro>
  <titulo>{$x/title/text()}</titulo>
  <precio>{$x/price/text()} €</precio>
  <precio_iva>{$x/price * 1.21} €</precio_iva>
</libro>