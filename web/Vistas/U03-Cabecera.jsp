<%-- 
    Document   : U02-Cabecera
    Created on : 04/12/2020, 01:03:04 AM
    Author     : V330
--%>

<%@page import="Modelo.U05_Admi"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int cuenta_id = 0;
    int log_id = 0;
    String usuario = "";
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
        log_id = (Integer) session.getAttribute("log_id");
        usuario = String.valueOf(session.getAttribute("usuario"));
    } catch (Exception e) {
        response.sendRedirect("U04-login.jsp");
    }


%>
<% 
       U05_AdmiDao dao=new U05_AdmiDao();
       int cuent_id=cuenta_id;
       U05_Admi p=(U05_Admi)dao.list(cuent_id);
       %>
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
                    <a href="A_Index.jsp">  <img src="../Imagenes/logo2.svg" width="210"></a>
                </div>
                <div class="u3menu">                    
                    <a href="U02-Rutas.jsp" class="d-block text-light p-5 font-weight-bold"><i class="icon ion-md-pin mr-3"></i>Rutas</a> 
                    <a href="U03A-listarEn.jsp" class="d-block text-light p-5 font-weight-bold"> <i class="icon ion-md-briefcase mr-3"></i>Encomiendas</a>
                    <a href="U03-Vender.jsp" class="d-block text-light p-5 font-weight-bold"><i class="icon ion-md-cart mr-3 lead"></i>Venta Pasaje</a>
                    <a href="#" onclick="editarCuenta(<%=p.getCuenta_id() %>)" class="d-block text-light p-5 font-weight-bold"><i class="icon ion-md-person mr-3 lead"></i>Perfil</a>
                    <%System.out.println(p.getCuenta_id()); %>
                </div>
            </div>
            <div class="w-100">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="../Imagenes/admin.svg" class="img-fluid rounded-circle avatar mr-2" > <%=usuario%>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Perfil</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="../U01_Controlador?accion=logout&cuenta_id=<%=cuenta_id%>&log_id=<%=log_id%>">Cerrar Sesion</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <script>
                    function editarCuenta(val) {
                        $.post("U03-editPerfil.jsp", {val: val})
                                .done(function (data) {
                                    $('#contenido').html(data);
//                console.log(data);
                                });
                    }
                </script>  
                </html>
