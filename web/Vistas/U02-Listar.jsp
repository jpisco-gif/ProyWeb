<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U02_Ruta"%>
<%@page import="ModeloDao.U02_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado General</title>
    </head>
    <body>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>RUTAS</th>
                        <th>EMBARQUE</th>
                        <th>LLEGADA</th>
                        <th>COSTO DE LA RUTA</th>
                        <th>DURACION DEL VIAJE</th>
                        <th>DESCRIPCION DEL VIAJE</th>
                        
                    </tr>
                </thead>
                <%
                    U02_RutasDao dao = new U02_RutasDao();
                    List<U02_Ruta> list = dao.listar();
                    Iterator<U02_Ruta> iter = list.iterator();
                    U02_Ruta per = null;
                    while (iter.hasNext()) {
                        per = iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%=per.getRuta()%></td>
                        <td><%=per.getEmbarque()%></td>
                        <td><%=per.getLlegada()%></td>
                        <td><%=per.getCosto()%></td>
                        <td><%=per.getDuracion()%></td>
                        <td><%=per.getDescripcion()%></td>
                        
                    </tr>
                    <% }%>
                </tbody>

            </table>


        </div>
    </body>
</html>