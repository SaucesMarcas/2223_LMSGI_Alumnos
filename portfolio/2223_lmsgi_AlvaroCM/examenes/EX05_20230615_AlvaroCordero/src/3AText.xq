for $x in doc('05')//libro
where count($x//idioma) >= 2
return $x/titulo/text()
