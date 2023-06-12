let $x := doc("bailes")/bailes/baile
return <preciomedio>{sum($x/precio/count($x))}</preciomedio>