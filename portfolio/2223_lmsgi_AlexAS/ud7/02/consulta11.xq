for $libro in /bookstore/book
return <libro>{$libro/title/text()} ({count($libro/author)})</libro>