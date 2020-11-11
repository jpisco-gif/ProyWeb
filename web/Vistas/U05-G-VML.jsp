<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Ventas_Mes"%>
<%@page import="ModeloDao.U05_Ventas_MesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../U05-Gerencia/U05-estilos.css">
        <title>Listado General</title>
    </head>
    <body>
        <div>
            <h1>Ventas por mes</h1>
         
            <table border="1">
                <thead>
                    
                    <tr>
                        <th>Mes</th>
                        <th>Ventas</th>
                    </tr>
                    
                </thead>
                <%
                U05_Ventas_MesDao dao=new U05_Ventas_MesDao();
                List<U05_Ventas_Mes> list=dao.listar();
                Iterator<U05_Ventas_Mes> iter=list.iterator();
                U05_Ventas_Mes per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%=per.getMes() %></td>
                        <td><%=per.getVentas() %></td>
                    </tr>
                    <% } %>
                </tbody>
                
            </table>

            
        </div>
    </body>
</html>
