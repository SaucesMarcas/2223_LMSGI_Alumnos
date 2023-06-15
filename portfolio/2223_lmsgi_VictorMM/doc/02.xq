
 <html>
    <head>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="author" content="Amor Rodriguez Navarro"/>
        <meta name="application-name" content="Portfolio de LMSGI"/>
        <meta name="description" content="Listado de distribuciones de sotware libre "/>
        <meta name="keywords" content="xslt, xml, html"/>
        <meta name="robots" content="index, follow"/>
        <link rel="icon" href="../../webroot/media/imagen/favicon.ico" type="image/x-icon"/>
        <title>Amor Distribución de software Linux</title>
        <link href="../target/css/estilos.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <header>
            <img src="images/logo.jpg"/>
            <h1>Distribucion de software Linux</h1>
        </header>
        <ul >
{
for $x in doc('linux')/software-libre/distribuciones/distribucion
return
   <li><a href="{$x/web}">{data($x/nombre)}</a></li> 
 }
   </ul>
   </body>
   </html>