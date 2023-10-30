for $x in doc("bailes")/bailes/baile
order by $x/sala
 return (data($x/profesor),data($x/sala))