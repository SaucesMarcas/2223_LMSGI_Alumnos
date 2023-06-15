for $x in doc('05')/datos/libros/libro
where $x/numero_paginas>100 and $x/anio_publicacion>1990 and $x/anio_publicacion<2023
return $x/titulo