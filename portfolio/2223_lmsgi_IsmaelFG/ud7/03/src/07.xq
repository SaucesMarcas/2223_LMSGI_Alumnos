let $p := doc("bailes")/bailes/baile/profesor
return (distinct-values($p),data($p/../sala))
