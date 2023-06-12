let $x := doc("bailes")/bailes/baile[sala/text()=1]/precio
return <precio>{sum($x)}</precio>