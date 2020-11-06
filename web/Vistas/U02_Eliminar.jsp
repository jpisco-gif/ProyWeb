<%@page import="Modelo.U02_Ruta"%>
<%@page import="ModeloDao.U02_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        U02_RutasDao end=new U02_RutasDao();
        int ruta_id=Integer.parseInt((String)request.getAttribute("idel"));
        end.eliminar(ruta_id);
        request.getRequestDispatcher("U02-Viajes2.jsp").forward(request, response);
        %>
            
    </body>
</html>