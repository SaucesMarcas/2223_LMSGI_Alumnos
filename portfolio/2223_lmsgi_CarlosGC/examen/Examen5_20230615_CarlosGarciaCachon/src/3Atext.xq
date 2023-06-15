for $x in doc('05')/datos/libros/libro/titulo
where count($x/../idiomas/idioma)>=2
return $x
   
