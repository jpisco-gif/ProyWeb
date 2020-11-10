<%
    int cuenta_id = (Integer)session.getAttribute("cuenta_id");   
%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_ComprobanteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="info-rutas">
            <h3>Horarios disponibles</h3>
            <table border="1">
                <tr>
                    <td>Nombres</td>
                    <td>Apellido paterno</td>
                    <td>Apellido materno</td>
                    <td>Nro. documento</td>
                    <td>Nro. asiento</td>
                    
                </tr>
                <%
                    U01_ComprobanteDao dao = new U01_ComprobanteDao();
                    List<U01_Comprobante> list = dao.mostrar_pasaje(cuenta_id);
                    Iterator<U01_Comprobante> iter = list.iterator();
                    U01_Comprobante comp = null;
                    while (iter.hasNext()) {
                        comp = iter.next();
                %>
                <tr>
                    <td><%=comp.getNombre()%></td>
                    <td><%=comp.getApepat()%></td>
                    <td><%=comp.getApemat()%></td>
                    <td><%=comp.getNumdoc()%></td>
                    <td><%=comp.getNum_asiento()%></td>
                    
                </tr>
                <% }%>
            </table>
        </section>
    </body>
</html>
