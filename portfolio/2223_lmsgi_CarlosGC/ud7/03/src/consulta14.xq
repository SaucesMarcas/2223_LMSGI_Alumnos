let $bailes := doc('bailes')//baile
return
  <losbailes>
    {for $baile in $bailes
    let $precio := $baile/precio
    let $descuento := $precio * 0.15
    let $precio_descuento := $precio - $descuento
    order by $baile/nombre/text()
    return <baile>
             <nombre>{$baile/nombre/text()}</nombre>
             <precio>{$precio}</precio>
             <precio_descuento>{$precio_descuento}</precio_descuento>
           </baile>}
  </losbailes>
