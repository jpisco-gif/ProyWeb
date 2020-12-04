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
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession sesion = request.getSession();
        U03A_EncomiendaDao end=new U03A_EncomiendaDao();
        
        System.out.println(id);
        U03A_Encomienda en=(U03A_Encomienda)end.list(id);
        %>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
        <h1>Editando </h1>
        <form action="../U03A_Controlador">
                <table border="1">
                    <tbody>
                        <tbody>
                        <tr>
                            <td colspan="2">EMISOR </td>                        
                            <td colspan="2">RECEPTOR </td>
                        </tr>
                        <tr>
                            <td>Nombres:</td>
                            <td><input type="text" name="txtNomE" value="<%=en.getEnvia_nom() %>"/></td>
                            <td>Nombres:</td>
                            <td><input type="text" name="txtNomR" value="<%=en.getRecoge_nom() %>"/></td>
                        </tr>
                        <tr>
                            <td>Apellidos:</td>
                            <td><input type="text" name="txtApeE" value="<%=en.getRecoge_nom() %>"/></td>
                            <td>Apellidos:</td>
                            <td><input type="text" name="txtApeR" value="<%=en.getRecoge_ape() %>"/></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDniE" value="<%=en.getEnvia_dni() %>"/></td>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDniR" value="<%=en.getRecoge_dni() %>"/></td>
                        </tr>
                        
                        <tr>
                            <td>Lugar de Envio</td>
                            <td><input type="text" name="txtLug" value="<%=en.getLugar_recojo() %>"/></td>
                            <input type="hidden" name="txtId" value="<%=en.getId()%>"/>
                            <td colspan="2"> <input type="submit" value="Actualizar" name="accion" /> </td>
                        </tr>
                    </tbody>                        
                </table>
                            <a href="U03A-listarEn.jsp">Regresar</a>
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
