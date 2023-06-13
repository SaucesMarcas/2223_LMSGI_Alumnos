<html>
  <head>
    <title>Distribucion de software Linux</title>
    <link rel="stylesheet" href="../target/css/estilos.css"/>
  </head>
  <body>
    <header>
      <h1>Distribucion de software Linux</h1>
    </header>
    <ul>
      {
        for $x in doc("linux")//distribuciones/distribucion
        return<li>{$x/nombre/text()}</li>
    }
    </ul>
  </body>
</html>
