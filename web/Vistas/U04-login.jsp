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

        <style>
            body{
                background-image: url(../Imagenes/bg/bg-1.jpg);
            }
        </style>

    </head>

    <body class="bodysd" >
        <header>
            <!-- start top -->
            <jsp:include page="U02-Menu.jsp"></jsp:include>

            <div align="center">
                <div class="login">
                    <div class="login-header">
                        <h1 class="name">Iniciar Sesion</h1>
                    </div>
                    <form action="../U01_Controlador" method="post">
                            <label class="name">Usuario:</label>
                            <input type="text" name="usuario" />
                            <label class="name">Contrase�a:</label>
                            <input type="password" name="contrase�a" />  
                            <input type="hidden" name="accion" value="login"/><br>
                            <input type="submit" value="Ingresar" />
                    </form>
                    <br>
                    No tiene una cuenta... <a href="U04-registro.jsp" >Registrarme</a>
                </div>
            </div>
    </body>
</html>
