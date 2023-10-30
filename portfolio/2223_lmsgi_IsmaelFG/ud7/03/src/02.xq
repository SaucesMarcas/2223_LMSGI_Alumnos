<bailes>
{
for $x in doc("bailes")/bailes/baile

return 
<losbailes>{data($x/nombre)}({data($x/plazas)})</losbailes>
}
</bailes>