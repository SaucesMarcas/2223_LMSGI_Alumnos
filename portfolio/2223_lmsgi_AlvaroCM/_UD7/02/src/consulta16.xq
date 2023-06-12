let $years := distinct-values(doc('books')//book/year)
return
  <result>
    {
       for $x in $years
       return <year>{$x}</year>
    }
  </result>
   