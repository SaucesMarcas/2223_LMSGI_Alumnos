let $x := doc("bailes")/bailes/baile[profesor/text()="Jesus Lozano"]
return <plazas>{sum($x/plazas)}</plazas>