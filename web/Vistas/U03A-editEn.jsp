<%
int id = Integer.parseInt(request.getParameter("val"));
%>

<%@page import="Modelo.U03A_Encomienda"%>
<%@page import="ModeloDao.U03A_EncomiendaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/U03-Validacion.js" type="text/javascript"></script>
        <title>Editor Encomienda</title>
    </head>
    <body>
        <%
        HttpSession sesion = request.getSession();
        U03A_EncomiendaDao end=new U03A_EncomiendaDao();
        
        System.out.println(id);
        U03A_Encomienda en=(U03A_Encomienda)end.list(id);
        %>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
        <h1>Editando </h1>
        <form action="../U03A_Controlador" onsubmit="return validarEn();" id="customers">
                <table border="1">
                    <tbody>
                        <tbody>
                        <tr>
                            <td colspan="2">EMISOR </td>                        
                            <td colspan="2">RECEPTOR </td>
                        </tr>
                        <tr>
                            <td>Nombres:</td>
                            <td><input type="text" id="txtNomE" name="txtNomE" value="<%=en.getEnvia_nom() %>"/></td>
                            <td>Nombres:</td>
                            <td><input type="text" id="txtNomR" name="txtNomR" value="<%=en.getRecoge_nom() %>"/></td>
                        </tr>
                        <tr>
                            <td>Apellidos:</td>
                            <td><input type="text" id="txtApeE" name="txtApeE" value="<%=en.getRecoge_nom() %>"/></td>
                            <td>Apellidos:</td>
                            <td><input type="text" id="txtApeR" name="txtApeR" value="<%=en.getRecoge_ape() %>"/></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><input type="text" id="txtDniE" name="txtDniE" value="<%=en.getEnvia_dni() %>"/></td>
                            <td>DNI:</td>
                            <td><input type="text" id="txtDniR" name="txtDniR" value="<%=en.getRecoge_dni() %>"/></td>
                        </tr>
                        
                        <tr>
                            <td>Lugar de Envio</td>
                            <td> <select name="txtLug">
                                    <option value="<%=en.getLugar_recojo() %>"><%=en.getCiudad() %></option>
                                    <option value="1">Lima</option>
                                    <option value="2">Ica</option>
                                    <option value="3">Arequipa</option>
                                    <option value="4">Cusco</option>
                                    <option value="5">Huancayo</option>                               
                            </select> </td>
                            <input type="hidden" name="txtId" value="<%=en.getId()%>"/>
                            <td colspan="2"><button class="btn btn-warning" value="Actualizar" type="submit" name="accion">Actualizar</button> </td>
                        </tr>
                    </tbody>                        
                </table>
                            <a href="U03A-listarEn.jsp"><button class="btn btn-info">Regresar</button> </a>
            </form> 
                            </div>
                            </div>
                        </div>

                    </section>
                </div>
            <div class="dropdown-divider"></div>
        </div>
    </body>
</html>
