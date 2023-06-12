let $bailes := doc('bailes')//baile[profesor = 'Jesus Lozano']
return
  <losbailes>
    {for $baile in $bailes
    let $plazas := $baile/plazas
    let $precio := $baile/precio
    return <baile>{$baile/nombre/text()}: {sum($plazas) * $precio}</baile>}
  </losbailes>
