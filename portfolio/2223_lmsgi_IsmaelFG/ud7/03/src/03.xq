for $x in doc("bailes")/bailes/baile/nombre
where $x/../precio >30

return data($x)

