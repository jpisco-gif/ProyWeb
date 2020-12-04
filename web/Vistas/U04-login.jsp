<%@ page language="java" contentType="text/html; charset=ISO-8859-1"      
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimum-scale=1.0" >
    <title>Llama Bus</title>
    <link href="../Benjamin/Vistas/css/animate.css" rel="stylesheet">
    <link href="../Benjamin/Vistas/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../Benjamin/Vistas/css/bootstrap.css" rel="stylesheet">
    <link href="../Benjamin/Vistas/css/flexslider.css" rel="stylesheet">
    <link href="../Benjamin/Vistas/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" media="screen" href="../Benjamin/Vistas/css/sequencejs.css">
    <link href="../Benjamin/Vistas/css/style.css" rel="stylesheet">
        <link href="../Benjamin/Vistas/css/animate.css" rel="stylesheet">
    <link href="https://file.myfontastic.com/t5tNwfwUapz4yDzK3B6sfe/icons.css" rel="stylesheet">
<title>Iniciar Sesion</title>
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
                                    <li class="current"><a href="../Benjamin/Vistas/Index.jsp">Inicio</a></li>
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
