for $x in doc("bailes")/bailes/baile/profesor
where substring($x,1,5)="Laura"
return $x/../precio * $x/../plazas


