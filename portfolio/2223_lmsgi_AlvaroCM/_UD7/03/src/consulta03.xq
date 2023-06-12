let $bailes := doc('bailes')//baile[precio > 30]
return
  <losbailes>
    {for $baile in $bailes
    return <baile>{$baile/nombre/text()}</baile>}
  </losbailes>
