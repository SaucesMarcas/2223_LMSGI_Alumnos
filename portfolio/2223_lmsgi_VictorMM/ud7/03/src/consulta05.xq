for $x in doc("bailes")/bailes/baile
where substring($x/comienzo/text(),2,3)="/1/"
return <bailes>{$x/nombre/text()}-{$x/comienzo/text()}</bailes>