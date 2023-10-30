for $x in doc("bailes")/bailes/baile

return ($x/nombre,$x/precio,<precio-familia>{$x/precio*0.85}</precio-familia>)