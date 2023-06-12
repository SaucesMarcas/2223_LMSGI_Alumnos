for $x in doc("bailes")/bailes/baile
return (delete node $x/comienzo, delete node $x/fin)
