for $x in doc("bailes")/bailes/baile
where $x/precio > 30
return $x/nombre/text()