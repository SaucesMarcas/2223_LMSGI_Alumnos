for $x in doc("bailes")/bailes/baile
order by $x/nombre/text()
return 
  <baile>
    <nombre>
      {
        $x/nombre/text()
      }
    </nombre>
    <precio>
      {
        $x/precio/text()
      }
    </precio>
    <precioIVA>
      {
        sum($x/precio+$x/precio*0.15)
      }
    </precioIVA>
  </baile>