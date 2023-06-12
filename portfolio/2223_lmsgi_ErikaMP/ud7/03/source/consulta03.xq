for $x in doc("bailes")/bailes/baile
where $x/precio/text()>30
return $x/nombre/text()