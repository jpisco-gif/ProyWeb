<%-- 
    Document   : U02-Cabecera
    Created on : 04/12/2020, 01:03:04 AM
    Author     : V330
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->    
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@1,300;1,700&display=swap" rel="stylesheet">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <title>Administración</title>
    </head>
    <body class="admin">
        <div class="d-flex" >
            <div id="u3sidebar" class="bg-primary">
                <div class="u3logo">
                    <a href="U05-G-index.jsp">  <img src="../Imagenes/logo2.svg" width="250"></a>
                </div>
                <div class="u3menu">
                    <a href="U05-G-cuentas.jsp" class="d-block text-light p-3 font-weight-bold"><i class="icon ion-md-apps mr-2 lead"></i>Cuentas</a>
                    <a href="U05-G-Terminales.jsp" class="d-block text-light p-3 font-weight-bold"> <i class="icon ion-md-bus"></i> Terminales</a>
                  
                    
                        <div class="dropdown">
                            <button class="d-block text-light p-3 font-weight-bold"><i class="icon ion-md-briefcase"></i>Ventas</button>
                        <div class="dropdown-content">
                        <a href="../U05_Controlador_Ventas_Mes?accion=listar">Venta por Mes</a>
                        <a href="../U05_Controlador_Ventas_Ruta?accion=listar">Venta por Ruta</a>
                        <a href="../U05_Controlador_Ventas_Clase?accion=listar">Venta por clase</a>
                        </div>
                        </div>
                    
                    <a href="#" class="d-block text-light p-3 font-weight-bold"><i class="icon ion-md-person mr-2 lead"></i>Perfil</a>
                    <a href="#" class="d-block text-light p-3 font-weight-bold">Tablero</a>                     
                </div>
            </div>
            <div class="w-100">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <form class="form-inline position-relative my-2 d-inline-block">
                        <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
                        <button class="btn btn-search position-absolute" type="submit" ><i class="icon ion-md-search"></i></button>
                    </form>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="../Imagenes/U05-finanzas.png" class="img-fluid rounded-circle avatar mr-2" > Nombre de administrador
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Cerrar Sesion</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                
</html>
