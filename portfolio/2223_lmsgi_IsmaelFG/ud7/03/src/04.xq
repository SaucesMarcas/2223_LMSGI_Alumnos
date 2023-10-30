for $x in doc("bailes")/bailes/baile
where $x/precio >30 and $x/precio/@moneda="euro"

return data($x/nombre)

