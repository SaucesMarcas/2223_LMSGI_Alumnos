let $bailes := doc('tu_archivo.xml')//baile
return
  <losbailes>
    {for $baile in $bailes
    order by $baile/sala/text()
    return <baile>{$baile/profesor/text()}, Sala {$baile/sala/text()}</baile>}
  </losbailes>
