<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_ComprobanteDao"%>
<%
    int cuenta_id = 0;
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
    } catch (Exception e) {
        response.sendRedirect("U04-login.jsp");
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Visuallizar pasajes</title>
    </head>
    <body class="body-historial">
        <jsp:include page="U02-Menu.jsp"></jsp:include>
        <br></br>
        <br></br>

        <section>
            <%
                U01_ComprobanteDao dao2 = new U01_ComprobanteDao();
                List<U01_Comprobante> list2 = dao2.listar_pasajes(cuenta_id);
                int aux4 = list2.size();
                if (aux4 != 0) {
            %>
            <section class="info-rutas">
                <p class="mensaje-historial">Sus pasajes adquiridos: </p>
                <a href="u01-historial.jsp"><input type="button" value="Imprimir" class="imprimir-historial"></a>
                <table class="w3-card-4 w3-centered" id="customers" border="1">
                    <tr>
                        <td class="cabecera-tablahist">Nombres</td>
                        <td class="cabecera-tablahist">Apellido paterno</td>
                        <td class="cabecera-tablahist">Apellido materno</td>
                        <td class="cabecera-tablahist">Nro. documento</td>
                        <td class="cabecera-tablahist">Origen</td>
                        <td class="cabecera-tablahist">Destino</td>
                        <td class="cabecera-tablahist">Fecha</td>
                        <td class="cabecera-tablahist">Hora de salida</td>
                        <td class="cabecera-tablahist">Puerta de embarque</td>
                        <td class="cabecera-tablahist">Nro. asiento</td>
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
