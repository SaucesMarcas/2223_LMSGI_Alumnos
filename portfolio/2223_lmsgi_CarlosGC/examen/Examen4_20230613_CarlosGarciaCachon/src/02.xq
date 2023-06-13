<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>XQUERY 02 Carlos Garcia Cachon</title>
  <link type="text/css" rel="stylesheet" href="../target/css/estilo2.css"/>
</head>
<body>
  <header>
      <img src="../target/images/logo.jpg" alt="Logo_Linux"></img>
      <h1>Distribución de software Linux</h1>
  </header>
    <ul>
      {
    for $nombre in doc("01")/software-libre/distribuciones/distribucion/nombre/data()
      let $link := doc("01")/software-libre/distribuciones/distribucion/web
    return 
          <li>
            <a target="_blank" href="{$link}">{$nombre}</a>
          </li>
      }
    </ul>
</body>
</html>