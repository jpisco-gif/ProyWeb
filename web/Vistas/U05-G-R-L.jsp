<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Rendimiento"%>
<%@page import="ModeloDao.U05_RendimientoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Css/newcss.css">
        <title>Listado General</title>
    </head>
    <body>
        
        
        
        
                                
                              
                              
                           
            <div>
            <h1>Rendimiento en Terminales</h1>
            <a href="U05_Controlador_Admi?accion=add">Agregar Nuevo></a>
            <table border="1">
                <thead>
                    
                    <tr>
                        <th>rendimiento_id</th>
                        <th>terminal_id</th>
                        <th>ciudad</th>
                        <th>puntuacion</th>
                        <th>incidencias</th>
                        <th>mes</th>
                        <th>Opciones</th>
                    </tr>
                    
                </thead>
                <%
                U05_RendimientoDao dao=new U05_RendimientoDao();
                List<U05_Rendimiento> list=dao.listar();
                Iterator<U05_Rendimiento> iter=list.iterator();
                U05_Rendimiento per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%=per.getRendimiento_id() %></td>
                        <td><%=per.getTerminal_id() %></td>
                        <td><%=per.getCiudad() %></td>
                        <td><%=per.getPuntuacion() %></td>
                        <td><%=per.getIncidencias() %></td>
                        <td><%=per.getMes() %></td>
                        <td>
                            <a href="U05_Controlador_Admi?accion=editar&cuenta_id=<%=per.getRendimiento_id()%>">Editar Cuenta</a> 
                        </td>
                    </tr>
                    <% } %>
                </tbody>
                
            </table>

            
        </div>    
    </body>
</html>
