for $x in /bookstore/book
return 
  <libro>
    {$x/title}
    <length>{string-length($x/title)}</length>
  </libro>