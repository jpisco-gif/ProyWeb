<%
String origen = request.getParameter("origen");
String destino = request.getParameter("destino");
String fecha = request.getParameter("fecha");
%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.U01_Ruta"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Muestra ruta</h1>
        <table border="1">
            <tr>
                <td>Cod. itinerario</td>
                <td>Puerta de llegada</td>
                <td>Duración</td>
                <td>Fecha</td>
                <td>Precio</td>
                <td>Asientos</td>
            </tr>
            <%
                out.println(origen);
                out.println(destino);
                out.println(fecha);
                
                U01_RutasDao dao = new U01_RutasDao();
                List<U01_Ruta> list = dao.consultar_todos();
                Iterator<U01_Ruta> iter = list.iterator();
                U01_Ruta ruta = null;
                while (iter.hasNext()) {
                    ruta = iter.next();
            %>
            <tr>
                <td><%=ruta.getItinerarios_id()%></td>
                <td><%=ruta.getPuerta_llegada()%></td>
                <td><%=ruta.getDuracion()%></td>
                <td><%=ruta.getFecha()%></td>
                <td><%=ruta.getPrecio()%></td>
                <td>
                    <a class="btnAsiento"  name="btnAsiento" onclick="EscoAsiento(<%=ruta.getItinerarios_id()%>)">Ver asientos</a>
                </td>
            </tr>
            <% }%>
        </table>
    </body>
    <script>
        function EscoAsiento(val) {
            $.post("u01-escogeAsiento.jsp", {val: val})
                    .done(function (data) {
                        $('#contenido2').html(data);
//                console.log(data);
                    });
        }
    </script>

</html>
