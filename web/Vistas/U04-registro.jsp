<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimum-scale=1.0" >
        <title>Llama Bus</title>
        <link rel="stylesheet" href="../Css/newcss.css">
        <link href="../Css/animate.css" rel="stylesheet">
        <link href="../Css/bootstrap-responsive.css" rel="stylesheet">
        <link href="../font/stylesheet.css" rel="stylesheet">
        <link href="../Css/bootstrap.css" rel="stylesheet">
        <link href="../Css/flexslider.css" rel="stylesheet">
        <link rel="stylesheet" media="screen" href="../Css/sequencejs.css">
        <link href="../Css/style.css" rel="stylesheet">
        <link href="../color/default.css" rel="stylesheet">


        <title>Iniciar Sesion</title>
    </head>
    <body background="../U04-img/huancayo.jpg" style=" display: block; max-width: 100%">
        <jsp:include page="U02-Menu.jsp"></jsp:include>

            <div align="center">
                <div class="login">
                    <div class="login-header">
                        <h1>Registro de usuario</h1>
                    </div>
                    <form action="<%=request.getContextPath()%>/Register" method="post">
                    <div class="login-form">
                        <label>Usuario:</label>
                        <input type="text" name="usuario" />
                        <label>Contraseña:</label>
                        <input type="password" name="contraseña" />  
                        <label>Email: </label>
                        <input type="text" name="email" /> <br><br>
                        <input type="submit" value="Registrar" />
                    </div>
                    </form>
            </div>
        </div>
    </body>
</html>
