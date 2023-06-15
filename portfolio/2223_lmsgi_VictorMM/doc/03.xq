<ultimaversion>
{
for $x in doc('linux')//distribucion/@id
let $r := max (//lanzamiento[@distribucion=$x]/@version)
return     
          //lanzamiento[@distribucion=$x and ($r=@version)]
   
}
</ultimaversion>