<%@ page language="java" contentType="text/html; charset=ISO-8859-1"      
         pageEncoding="ISO-8859-1"%>

<%
    int cuenta_id = 0;
    int log_id = 0;
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
        log_id = (Integer) session.getAttribute("log_id");
    } catch (Exception e) {
        cuenta_id = 0;
        log_id = 0;
    }


%>

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
        <style>
            body{
                background-image: url(../img/bg/bg-1.jpg);
            }
        </style>

    </head>

    <body class="bodysd" >
        <header>
            <!-- start top -->
            <jsp:include page="U02-Menu.jsp"></jsp:include>
            <br>

            <div align="center">
                <div class="login">
                    <div class="login-header">
                        <h1>Iniciar Sesion</h1>
                    </div>
                    <form action="../U01_Controlador" method="post">
                        <div class="login-form">
                            <label>Usuario:</label>
                            <input type="text" name="usuario" />
                            <label>Contraseña:</label>
                            <input type="password" name="contraseña" />  
                            <input type="hidden" name="accion" value="login"/><br>
                            <input type="submit" value="Ingresar" />
                        </div>
                        
                    </form>
                    <br>
                    No tiene una cuenta... <a href="U04-registro.jsp">Registrarme</a>
                </div>
            </div>
    </body>
</html>
