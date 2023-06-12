for $baile in doc("bailes")/bailes/baile
return
  <baile>
    <nombre>{ $baile/nombre/text() }</nombre>
    <precio cuota="{ $baile/precio/@cuota }" moneda="{ $baile/precio/@moneda }">{ $baile/precio/text() }</precio>
    <plazas>{ $baile/plazas/text() }</plazas>
    <profesor>{ $baile/profesor/text() }</profesor>
    <sala>{ $baile/sala/text() }</sala>
  </baile>