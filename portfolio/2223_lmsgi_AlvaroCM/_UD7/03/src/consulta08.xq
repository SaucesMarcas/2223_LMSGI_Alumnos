let $bailes := doc('books')//baile
let $precios := $bailes/precio
return
  <media>
    {avg($precios)}
  </media>
