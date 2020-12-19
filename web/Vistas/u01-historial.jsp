<%-- 
    Document   : u01-historial
    Created on : 18-dic-2020, 23:12:16
    Author     : Manuel
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_ComprobanteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int cuenta_id = 0;
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
    } catch (Exception e) {
        response.sendRedirect("U04-login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body onload="window.print()">
        <section>
            <%
                U01_ComprobanteDao dao2 = new U01_ComprobanteDao();
                List<U01_Comprobante> list2 = dao2.listar_pasajes(cuenta_id);
                int aux4 = list2.size();
                if (aux4 != 0) {
            %>
            <section class="info-rutas">
                <a href="u01-historial.jsp"><input type="button" value="Imprimir"></a>
                <a href="u01-visualizarHistorial.jsp"><input type="button" value="Atras"></a>
                <table>
                    <tr>
                        <td>Nombres</td>
                        <td>Apellido paterno</td>
                        <td>Apellido materno</td>
                        <td>Nro. documento</td>
                        <td>Origen</td>
                        <td>Destino</td>
                        <td>Fecha</td>
                        <td>Hora de salida</td>
                        <td>Puerta de embarque</td>
                        <td>Nro. asiento</td>
                    </tr>
                    <%
                        Iterator<U01_Comprobante> iter2 = list2.iterator();
                        U01_Comprobante comp = null;
                        while (iter2.hasNext()) {
                            comp = iter2.next();
                    %>
                    <tr>
                        <td><%=comp.getNombre()%></td>
                        <td><%=comp.getApepat()%></td>
                        <td><%=comp.getApemat()%></td>
                        <td><%=comp.getNumdoc()%></td>
                        <td><%=comp.getOrigen()%></td>
                        <td><%=comp.getDestino()%></td>
                        <td><%=comp.getFecha()%></td>
                        <td><%=comp.getHora()%></td>
                        <td><%=comp.getPuerta()%></td>
                        <td><%=comp.getNum_asiento()%></td>


                    </tr>
                    <%}%>
                </table>
            </section>
            <%} else {%>
            <div>
                <P>Aun no ha usado nuestro servicio. ¡Que esperas!!</P>
            </div>

            <%
                }
            %>
        </section>
    </body>
</html>
