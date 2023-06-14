let $bailes := doc('bailes')//baile
return
  <losbailes>
    {for $baile in $bailes
    return <baile>
             <nombre>{$baile/nombre/text()}</nombre>
             <precio>{$baile/precio/text()}</precio>
             <plazas>{$baile/plazas/text()}</plazas>
             <profesor>{$baile/profesor/text()}</profesor>
             <sala>{$baile/sala/text()}</sala>
           </baile>}
  </losbailes>
