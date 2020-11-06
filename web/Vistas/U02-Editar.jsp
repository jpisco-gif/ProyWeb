<%@page import="ModeloDao.U02_RutasDao"%>
<%@page import="Modelo.U02_Ruta"%>
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
        int ruta_id=Integer.parseInt((String)request.getAttribute("iden"));
        U02_Ruta en=(U02_Ruta)end.list(ruta_id);
        %>
        <form action="Controlador">
            <table border="2">
                <thead>
                    <tr>
                        <th>CAMBIOS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> EMBARQUE </td>
                        <td> <input type="text" name="txtEmbarque" value="<%=en.getEmbarque()%>"/> </td>
                    </tr>
                    <tr>
                        <td> Llegada </td>
                        <td> <input type="text" name="txtLlegada" value="<%=en.getLlegada()%>"/> </td>
                    </tr>
                    <tr>
                        <td> COSTO DE LA RUTA </td>
                        <td> <input type="text" name="txtCosto" value="<%=en.getCosto()%>"/> </td>
                    </tr>
                    <tr>
                        <td> DURACION DEL VIAJE </td>
                        <td> <input type="text" name="txtduracion" value="<%=en.getDuracion()%>"/> </td>
                    </tr>
                    <tr>
                        <td> DESCRIPCION </td>
                        <td> <input type="text" name="txtDescripcion" value="<%=en.getDescripcion()%>"/> </td>
                    </tr>
                </tbody>
            </table>
                    <a href="Controlador?accion=listar">Regresar</a>
        </form> 
    </body>
</html>