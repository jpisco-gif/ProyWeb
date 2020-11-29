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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="../js/jquery.js"></script>
    </head>
    <body>
        <h1>Encomiendas</h1>
        <h1><a href="../U03A_Controlador?accion=addEn">Agregar nueva encomienda</a></h1>
        <div id="contenido">
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
                        <td><a href="../U03A_Controlador?accion=eliminarEn&id=<%=en.getId()%>" onclick="return mensaje();" ><input type="button" value="Eliminsr"></a> </td>                            
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
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
</html>
