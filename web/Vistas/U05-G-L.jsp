<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Admi"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
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
            <h1>Administradores</h1>
            <a href="U05_Controlador_Admi?accion=add">Agregar Nuevo></a>
            <table border="1">
                <thead>
                    
                    <tr>
                        <th>cuenta_id</th>
                        <th>rol_id</th>
                        <th>usuario</th>
                        <th>contraseña</th>
                        <th>email</th>
                        
                       
                        <th>modificar</th>
                    </tr>
                    
                </thead>
                <%
                U05_AdmiDao dao=new U05_AdmiDao();
                List<U05_Admi> list=dao.listar2();
                Iterator<U05_Admi> iter=list.iterator();
                U05_Admi per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%=per.getCuenta_id() %></td>
                        <td><%=per.getRol_id() %></td>
                        <td><%=per.getUsuario() %></td>
                        <td><%=per.getContraseña() %></td>
                        <td><%=per.getEmail() %></td>
 
                        
                        <td>
                            <a href="U05_Controlador_Admi?accion=editar&cuenta_id=<%=per.getCuenta_id()%>">Editar Cuenta</a>
                            <a href="U05_Controlador_Admi?accion=editar2&cuenta_id=<%=per.getCuenta_id()%>">Editar Informacion personal</a>
                            <a>Remove</a>
                            
                        </td>
                    </tr>
                    <% } %>
                </tbody>
                
            </table>

            
        </div>
    </body>
</html>
