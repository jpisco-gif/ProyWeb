<%@ page language="java" contentType="text/html; charset=ISO-8859-1"      
 pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">

    <head class="head">
        <meta charset="utf-8">
        <title>Llama bus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="../Css/animate.css" rel="stylesheet">
        <link href="../Css/bootstrap-responsive.css" rel="stylesheet">
        <link href="../font/stylesheet.css" rel="stylesheet">
        <link href="../Css/bootstrap.css" rel="stylesheet">
        <link href="../Css/flexslider.css" rel="stylesheet">
        <link rel="stylesheet" media="screen" href="../Css/sequencejs.css">
        <link href="../Css/style.css" rel="stylesheet">
        <link href="../color/default.css" rel="stylesheet">

        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="../ico/favicon.ico">

    </head>

    <body class="body">
        <header>

            <!-- start top -->
            <div id="topnav" class="navbar navbar-fixed-top default">
                <div class="navbar-inner">
                    <div class="container">
                        <div class="logo">
                            <a class="brand" href="Index.jsp"><img src="img/logo2.png" alt=""></a>
                        </div>
                        <div class="navigation">
                            <nav>
                                <ul class="nav pull-right">
                                    <li class="current"><a href="#featured">Inicio</a></li>
                                    <li><a href="#about">Nosotros</a></li>
                                    <li><a href="#services">Servicios</a></li>
                                    <li><a href="#works">Compra de Pasajes</a></li>
                                    <li><a href="#contact">Contactos</a></li>
                                    <li class="dropdown"><a href="U04-login.jsp">Login</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- end top -->
        </header>
    
 <div align="center">
     <div class="login">
     <div class="login-header">
  <h1>Iniciar Sesion</h1>
  </div>
  <form action="../U01_Controlador" method="post">
       <div class="login-form">
     <label>usuario:</label>
     <input type="text" name="usuario" />
     <label>contraseña:</label>
     <input type="password" name="contraseña" />  
     <input type="hidden" name="accion" value="login"/>
     <input type="submit" value="Ingresar" />
       
   
  </form>
        <br>
        no tiene una cuenta... <a href="U04-registro.jsp">Registrarme</a>
</div>
 </div>
</body>
</html>
