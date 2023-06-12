for $x in /bailes/baile
where $x/profesor = "Jesus Lozano"
return <beneficio>{$x/plazas * $x/precio}</beneficio>