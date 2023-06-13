<ulimaversion>
  {
    for $x in doc('01')/software-libre/lanzamientos/lanzamiento
    let $y := distinct-values(doc('01')/software-libre/lanzamientos/lanzamiento/@distribucion)
    let $z := max($y/../@version)
    where $z
    return $x
  }
</ulimaversion>