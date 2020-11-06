<%@ page language="java" contentType="text/html; charset=ISO-8859-1"      
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimum-scale=1.0" >
    <title>Llama Bus</title>
    <link rel="stylesheet" href="../../../css/estilo1.css">
    <link href="https://file.myfontastic.com/t5tNwfwUapz4yDzK3B6sfe/icons.css" rel="stylesheet">
<title>Iniciar Sesion</title>
</head>
<body background="../U04-img/huancayo.jpg" style=" display: block; max-width: 100%">
    <header class="header">
        <div class="contenedor">
            <h1 class="logo">Llama bus</h1>
            <span class="icon-menu" id="btn-menu"></span>
            <nav class="nav" id="nav">
                <ul class="menu">
                    <li class="menu__item"><a class="menu__link elect" href="#">Inicio</a></li>
                    <li class="menu__item"><a class="menu__link" href="#">servicios</a></li>
                    <li class="menu__item"><a class="menu__link" href="#">Nosotros</a></li>
                    <li class="menu__item"><a class="menu__link" href="#">Atencion al cliente</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
 <div align="center">
     <div class="login">
     <div class="login-header">
  <h1>Iniciar Sesion</h1>
  </div>
  <form action="<%=request.getContextPath()%>/login" method="post">
       <div class="login-form">
     <label>usuario:</label>
     <input type="text" name="usuario" />
     <label>contraseña:</label>
     <input type="password" name="contraseña" />  
     <input type="submit" value="Ingresar" />
       
   
  </form>
        <br>
        no tiene una cuenta... <a href="U04-registro.jsp">Registrarme</a>
</div>
 </div>
</body>
</html>
