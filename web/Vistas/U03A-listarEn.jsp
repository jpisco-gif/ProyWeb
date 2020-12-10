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
         <jsp:include page="U03-Cabecera.jsp"></jsp:include>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10">
                                    <h1>Encomiendas</h1>
                                    <h1><a href="../U03A_Controlador?accion=addEn">Agregar nueva encomienda</a></h1>
                                    
                                        <table border="1" class="user" id="customers">
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
                                                    <td><%=en.getCiudad()%></td>
                                                    <td><a onclick="editarDatos(<%=en.getId()%>)"><input type="button" value="Editar"></a></td>
                                                    <td><a href="../U03A_Controlador?accion=eliminarEn&id=<%=en.getId()%>" onclick="return mensaje();" ><input type="button" value="Eliminar"></a> </td>                            
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                   

                                </div>
                            </div>
                        </div>

                    </section>
                </div>
            </div>
            <div class="dropdown-divider"></div>
        </div>
</body> 
<script type="text/javascript">
                                        function mensaje(e) {
                                            if (confirm("¿Estás seguro que deseas eliminiar el registro?")) {
                                                return true;
                                            } else {
                                                return false; //cancela el evento por defecto de ir a la pagina
                                            }
                                        }
                                    </script>
                                    
                                    <script>
                                        function editarDatos(val) {
                                            $.post("U03A-editEn.jsp", {val: val})
                                                    .done(function (data) {
                                                        $('#content').html(data);
                                                        //                console.log(data);
                                                    });
                                        }
                                    </script>
</html>
