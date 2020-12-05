<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Admi"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
        #customers {
          font-family: Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }

        #customers td, #customers th {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #2b2b3b;
          color: white;
        }
        </style>        
        
        <title>Listado General</title>
    </head>
    <body onload="javascript:window.print()">
        
        
        
        
                                
                              
                              
                           
            <div>
            <table id="customers" border="1">
                <thead>
                    
                    <tr>
                        
                        <th>usuario</th>
                        <th>contraseña</th>
                        <th>email</th>
                        
                        
                        <th>nombres</th>
                        <th>apellido_paterno</th>
                        <th>apellido_materno</th>
                        <th>sexo</th>
                        <th>telefono</th>
                        <th>edad</th>
                       
                        <th>cod_documento</th>
                        
                        
                    </tr>
                    
                </thead>
                <%
                U05_AdmiDao dao=new U05_AdmiDao();
                List<U05_Admi> list=dao.listar();
                Iterator<U05_Admi> iter=list.iterator();
                U05_Admi per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                %>
                <tbody>
                    <tr>
                        
                        <td><%=per.getUsuario() %></td>
                        <td><%=per.getContraseña() %></td>
                        <td><%=per.getEmail() %></td>
 
                        
                        <td><%=per.getNombres() %></td>
                        <td><%=per.getApellido_paterno() %></td>
                        <td><%=per.getApellido_materno() %></td>
                        <td><%=per.getSexo() %></td>
                        <td><%=per.getTelefono() %></td>
                        <td><%=per.getEdad() %></td>
                        
                        <td><%=per.getCod_documento() %></td>
                       
                    </tr>
                    <% } %>
                </tbody>
                
            </table>

            
        </div>    
    </body>
    
    
    
</html>
