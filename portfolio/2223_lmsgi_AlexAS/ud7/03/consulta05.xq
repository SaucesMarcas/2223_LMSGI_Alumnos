for $x in doc("bailes")/bailes/baile
where contains($x/comienzo, "/1/")
return 
$x/nombre/text()