let $bailes := doc('bailes')//baile[starts-with(profesor, 'Laura')]
let $plazas := $bailes/plazas
let $precio := $bailes/precio
return
  <ganancia>
    {sum($plazas) * $precio}
  </ganancia>
