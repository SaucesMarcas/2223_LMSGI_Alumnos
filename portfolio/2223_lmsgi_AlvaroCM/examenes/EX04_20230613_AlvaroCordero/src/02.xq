<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <link rel="stylesheet" href="../target/css/estilos.css"/>
</head>
<body>
<header>
  <img src="../target/images/logo.jpg" alt="Linux Mint"/>
  <h1>Distribucion de software Linux</h1>
</header>
  {
     for $x in doc('01')/software-libre/distribuciones/distribucion
      return <ul>
              <li>
                <a href="{$x/web}">{$x/nombre}</a>
              </li>
            </ul> 
  }
</body>
</html>
