<table> {
  for $x in /bailes/baile
  return <tr><td>{$x/nombre/text()}</td><td>{$x/profesor/text()}</td></tr>
} </table>