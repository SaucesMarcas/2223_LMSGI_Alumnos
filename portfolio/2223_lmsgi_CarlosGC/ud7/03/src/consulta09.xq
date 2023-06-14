let $bailes := doc('bailes')//baile[sala = '1']
let $precios := $bailes/precio
return
  <suma>
    {sum($precios)}
  </suma>
