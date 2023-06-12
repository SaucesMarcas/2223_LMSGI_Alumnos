let $bailes := doc('bailes')//baile
return
  <losbailes>
    {for $baile in $bailes
    return <baile>{$baile/nombre/text()}</baile>}
  </losbailes>
