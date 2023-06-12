<libros>
  {
    for $x in doc("book")/bookstore/book
    let $f := sum($x/price/text()*1.04)
    order by $f 
    return 
    <libro>
      <titulo>{$x/title/text()}</titulo>
      <precio>{$x/price/text()}</precio>
      <iva>{$f}</iva>
    </libro>
  }
</libros>
