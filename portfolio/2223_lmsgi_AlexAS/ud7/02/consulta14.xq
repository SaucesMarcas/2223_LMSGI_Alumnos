for $x in /bookstore/book
where contains($x/title, "x") or contains($x/title, "X")
order by $x/title descending
return $x