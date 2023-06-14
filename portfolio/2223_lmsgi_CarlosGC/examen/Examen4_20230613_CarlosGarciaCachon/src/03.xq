<ultimaversion>
{
for $x in doc('01')//distribucion/@id
let $r := max (//lanzamiento[@distribucion=$x]/@version)
return     
          //lanzamiento[@distribucion=$x and ($r=@version)]
   
}
</ultimaversion>