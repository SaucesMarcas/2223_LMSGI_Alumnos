for $x in /bailes/baile
order by $x/nombre
return 
   <baile>
      {$x/nombre}
      <precio>{$x/precio/text()}</precio>
      <fam_numerosa>{$x/precio * 0.85}</fam_numerosa>
   </baile>