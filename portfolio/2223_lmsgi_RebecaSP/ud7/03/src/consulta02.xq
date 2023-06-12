for $x in doc("bailes")/bailes/baile
return <losbailes>{$x/nombre/text()}({$x/plazas/text()})</losbailes>