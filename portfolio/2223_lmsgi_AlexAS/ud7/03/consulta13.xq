for $x in /bailes/baile
where starts-with($x/profesor, "Laura")
return <beneficio>{$x/plazas * $x/precio}</beneficio>