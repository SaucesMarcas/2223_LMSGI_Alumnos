let $baile := doc('bailes')//baile[profesor = 'Laura Mendiola']
let $plazas := $baile/plazas
let $precio := $baile/precio
return
  <ganancia>
    {sum($plazas) * $precio}
  </ganancia>
