<%-- 
    Document   : U03A_listarEn
    Created on : 06/11/2020, 12:28:28 AM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U03A_EncomiendaDao"%>
<%@page import="Modelo.U03A_Encomienda"%>
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
        <script type="text/javascript" src="../js/jquery.js"></script>
    </head>
    <body>
        <div class="d-flex" >
            <div id="u3sidebar" class="bg-primary">
                <div class="u3logo">
                    <a href="A_Index.jsp"><img src="../Imagenes/logo2.svg" width="250"></a>
                </div>
                <div class="u3menu">
                    <a href="U03A_Controlador?accion=listar" class="d-block text-light p-3 font-weight-bold"><i class="icon ion-md-apps mr-2 lead"></i>Usuarios</a>
                    <a href="#" class="d-block text-light p-3 font-weight-bold"> <i class="icon ion-md-bus"></i> Viajes</a>
                    <a href="U03A-listarEn.jsp" class="d-block text-light p-3 font-weight-bold"> <i class="icon ion-md-briefcase"></i> Encomiendas</a>
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
                                    <a class="dropdown-item" href="#">Mi perfil</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Cerrar Sesion</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div id="content">
                    <section>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-20">
                                    <h1>Encomiendas</h1>
                                    <h1><a href="../U03A_Controlador?accion=addEn">Agregar nueva encomienda</a></h1>
                                    
                                        <table border="1" class="user">
                                            <thead>
                                                <tr>                            
                                                    <th>ID</th>
                                                    <th>Nombre del Emisor</th>
                                                    <th>Apellido del Emisor</th>
                                                    <th>Dni del Emisor</th>
                                                    <th>Nombre del Receptor</th>
                                                    <th>Apellido del Receptor</th>
                                                    <th>Dni del Receptor</th>
                                                    <th>Lugar</th>
                                                    <th colspan="2" >ESTADO</th>
                                                </tr>
                                            </thead>
                                            <%
                                                U03A_EncomiendaDao dao = new U03A_EncomiendaDao();
                                                List<U03A_Encomienda> list = dao.listar();
                                                Iterator<U03A_Encomienda> iter = list.iterator();
                                                U03A_Encomienda en = null;
                                                while (iter.hasNext()) {
                                                    en = iter.next();

                                            %>
                                            <tbody>
                                                <tr>

                                                    <td><%=en.getId()%></td>
                                                    <td><%=en.getEnvia_nom()%></td>
                                                    <td><%=en.getEnvia_ape()%></td>
                                                    <td><%=en.getEnvia_dni()%></td>
                                                    <td><%=en.getRecoge_nom()%></td>
                                                    <td><%=en.getRecoge_ape()%></td>
                                                    <td><%=en.getRecoge_dni()%></td>
                                                    <td><%=en.getLugar_recojo()%></td>
                                                    <td><a onclick="editarDatos(<%=en.getId()%>)"><input type="button" value="Editar"></a></td>
                                                    <td><a href="../U03A_Controlador?accion=eliminarEn&id=<%=en.getId()%>" onclick="return mensaje();" ><input type="button" value="Eliminar"></a> </td>                            
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                    <script type="text/javascript">
                                        function mensaje(e) {
                                            if (confirm("¿Estás seguro que deseas eliminiar el registro?")) {
                                                return true;
                                            } else {
                                                return false; //cancela el evento por defecto de ir a la pagina
                                            }
                                        }
                                    </script>
                                    </body>
                                    <script>
                                        function editarDatos(val) {
                                            $.post("U03A-editEn.jsp", {val: val})
                                                    .done(function (data) {
                                                        $('#contenido').html(data);
                                                        //                console.log(data);
                                                    });
                                        }
                                    </script>

                                </div>
                            </div>
                        </div>

                    </section>
                </div>
            </div>
            <div class="dropdown-divider"></div>
        </div>

</html>
