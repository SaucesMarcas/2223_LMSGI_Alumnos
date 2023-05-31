<html>
  <body>  
    <table>
      {
        for $x in doc("books")/bookstore/book/title/text() 
        return
        <tr>
          <td>{$x}</td>
        </tr>
    }
    </table>
  </body>
</html>


