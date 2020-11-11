<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Ventas_Ruta"%>
<%@page import="ModeloDao.U05_Ventas_RutaDao"%>
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
            <h1>Ventas por ruta</h1>
         
            <table border="1">
                <thead>
                    
                    <tr>
                        <th>Ruta</th>
                        <th>Ventas</th>
                        <th>Mes</th>
                    </tr>
                    
                </thead>
                <%
                U05_Ventas_RutaDao dao=new U05_Ventas_RutaDao();
                List<U05_Ventas_Ruta> list=dao.listar();
                Iterator<U05_Ventas_Ruta> iter=list.iterator();
                U05_Ventas_Ruta per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%=per.getRuta() %></td>
                        <td><%=per.getVentas() %></td>
                        <td><%=per.getMes() %></td>
                    </tr>
                    <% } %>
                </tbody>
                
            </table>

            
        </div>
    </body>
</html>
