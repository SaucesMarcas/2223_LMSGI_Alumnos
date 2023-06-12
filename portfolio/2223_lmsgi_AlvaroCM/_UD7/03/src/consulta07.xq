let $bailes := doc('bailes')//baile
let $profesores := distinct-values($bailes/profesor)
return
  <losbailes>
    {for $profesor in $profesores
    let $salas := $bailes[profesor = $profesor]/sala
    order by $profesor
    return <baile>{$profesor}: {string-join($salas, ', ')}</baile>}
 </losbailes>
