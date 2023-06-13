<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
    <title> 02.html </title>
  </head>
  <body>
    <header>
      <img src="../target/images/logo.jpg"/>
      <h1>
        {
          for $x in doc("01")/software-libre
          let $y := concat('Distribución de software ', $x/@tipo)
          return $y
        }
      </h1>
    </header>
    <ul>
        {
          for $x in doc("01")/software-libre/distribuciones/distribucion
          return
            <li>
                <a href="{for $y in doc("01")/software-libre/distribuciones/distribucion
                return $y/web/text()}">
                  {$x/nombre/text()}
                </a>
            </li>
        }
    </ul>
  </body>
</html>