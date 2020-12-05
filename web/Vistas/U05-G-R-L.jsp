<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Rendimiento"%>
<%@page import="ModeloDao.U05_RendimientoDao"%>
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
    <body onload="window.print()">
        
        
        
        
                                
                              
                              
                           
            <div>
            <a href="javascript:window.print()">Imprimir</a> <a href="U05-G-Terminales.jsp"><input type="button" value="Regresar"></a>
            
            <table id="customers" border="1">
                <thead>
                    
                    <tr>
                        <th>rendimiento_id</th>
                        <th>terminal_id</th>
                        <th>ciudad</th>
                        <th>puntuacion</th>
                        <th>incidencias</th>
                        <th>mes</th>
                
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
                        
                    </tr>
                    <% } %>
                </tbody>
                
            </table>

            
        </div>    
    </body>
</html>
