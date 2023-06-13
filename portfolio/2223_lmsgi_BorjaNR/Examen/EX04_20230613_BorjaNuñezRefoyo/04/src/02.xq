<html>
  <head>
    <title>PREGUNTA2. Borja Nuñez Refoyo</title>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <header>
      <img src="../target/images/logo.jpg"/>
      <h2>Distribución de software Linux</h2>
    </header>
    <main>    
        {
          for $x in doc("Distribuciones")//distribuciones
          return<ul>
            <li>{$x/distribucion/nombre/text()}</li>
          </ul>
        }
    </main>
  </body>
</html>