let $bailes := doc('bailes')//baile[starts-with(comienzo, '1/')]
return
  <losbailes>
    {for $baile in $bailes
    return <baile>{$baile/nombre/text()}, {$baile/comienzo/text()}</baile>}
  </losbailes>
