for $x in distinct-values(doc("bailes")/bailes/baile/profesor)
return <profesor>{$x}</profesor>