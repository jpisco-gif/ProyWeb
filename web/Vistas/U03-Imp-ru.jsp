<%-- 
    Document   : U03-Imp-ru
    Created on : 05/12/2020, 06:20:10 PM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U02_Ruta"%>
<%@page import="Modelo.U02_Ruta"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U02_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <a a href="javascript:window.print()">IMPRIMIR</a>
        <a a href="U02-Rutas.jsp">Volver</a>
        <div id="customers">
                                    <table border="1" >
                                        <thead>
                                            <tr>
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
                                            <td><%=per.getEmbarque()%></td>
                                            <td><%=per.getLlegada()%></td>
                                            <td>S/. <%=per.getCosto()%></td>
                                            <td><%=per.getDuracion()%> horas</td>
                                            <td><%=per.getDescripcion()%></td>                                        
 

                                        </tr>
                                        <% }%>
                                    </tbody>

                                </table>
                            </div>
    </body>
</html>
