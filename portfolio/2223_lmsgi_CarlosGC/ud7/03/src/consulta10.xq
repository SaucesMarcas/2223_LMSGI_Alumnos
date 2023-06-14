let $bailes := doc('bailes')//baile[profesor = 'Jesus Lozano']
let $plazas := $bailes/plazas
return
  <total_plazas>
    {sum($plazas)}
  </total_plazas>
