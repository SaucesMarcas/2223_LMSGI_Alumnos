<table>
   {
    for $x in doc('books')//title/text()
     return <tr><td>{$x}</td></tr>
    }
</table>
    
  