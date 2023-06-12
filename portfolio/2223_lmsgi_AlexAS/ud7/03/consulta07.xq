for $x in distinct-values(/bailes/baile/profesor)
let $y := /bailes/baile[profesor=$x]/sala
order by $x
return 
   <profesores>
     <nombre>{$x}</nombre>
     {$y}
   </profesores>
