for $x in doc("bailes")/bailes/baile[profesor/text()="Laura Mendiola"]
return <dinero>{sum($x/precio*$x/plazas)}</dinero>