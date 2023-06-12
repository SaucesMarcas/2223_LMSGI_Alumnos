for $x in doc("bailes")/bailes/baile[profesor[contains(., 'Laura')]]
let $pl := xs:integer($x/plazas)
let $pr := xs:decimal($x/precio)
let $b := $pl * $pr
return <beneficio>{$b}</beneficio>