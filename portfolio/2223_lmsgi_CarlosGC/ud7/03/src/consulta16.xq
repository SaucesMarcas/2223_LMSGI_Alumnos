let $bailes := doc('bailes')//baile
return
  <table>
    <tr>
      <th>Nombre del Baile</th>
      <th>Profesor</th>
    </tr>
    {for $baile in $bailes
    return
      <tr>
        <td>{$baile/nombre/text()}</td>
        <td>{$baile/profesor/text()}</td>
      </tr>}
  </table>
