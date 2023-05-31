for $book in /bookstore/book
return 
  <libro>
    {$book/title}
    <length>{string-length($book/title)}</length>
  </libro>