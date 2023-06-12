for $x in doc("bailes")/bailes/baile
order by $x/sala
return 
concat($x/profesor/text(),' ',$x/sala/text())

