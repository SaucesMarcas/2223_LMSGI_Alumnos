(:mostrar titulos de libros en tabla HTML:)
<table>
{
 for $x in doc("books")/bookstore/book/title/text()
 return
   <tr>
     <td>
       {$x}
     </td>
   </tr>
}
</table>
