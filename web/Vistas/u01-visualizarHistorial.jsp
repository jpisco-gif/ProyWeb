<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_ComprobanteDao"%>
<%
    int cuenta_id = 0;
    try {
            cuenta_id = (Integer) session.getAttribute("cuenta_id");
        } catch (Exception e) {
            response.sendRedirect("Vistas/U04-login.jsp");
        }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>lskdjflk</h1>
        <%
            U01_ComprobanteDao dao2 = new U01_ComprobanteDao();
            List<U01_Comprobante> list2 = dao2.mostrar_pasaje(cuenta_id);
            int aux4 = list2.size();
            if (aux4 != 0) {
        %>
        <section class="info-rutas">
            <h3>Sus viajes pendientes</h3>
            <table border="1">
                <tr>
                    <td>persona id</td>
                    <td>Nombres</td>
                    <td>Apellido paterno</td>
                    <td>Apellido materno</td>
                    <td>Nro. documento</td>
                    <td>Nro. asiento</td>
                    <td></td>

                </tr>
                <%
                    Iterator<U01_Comprobante> iter2 = list2.iterator();
                    U01_Comprobante comp = null;
                    while (iter2.hasNext()) {
                        comp = iter2.next();
                %>
                <tr>
                    <td><%=comp.getUsuario_id()%></td>
                    <td><%=comp.getNombre()%></td>
                    <td><%=comp.getApepat()%></td>
                    <td><%=comp.getApemat()%></td>
                    <td><%=comp.getNumdoc()%></td>
                    <td><%=comp.getNum_asiento()%></td>

                <form action="../U01_Controlador" method="post">
                    <input type="hidden" name="accion" value="eliminar-pasaje">
                    <input type="hidden" name="comprobante_id" value="<%=comp.getComprobante_id()%>">
                    <input type="hidden" name="persona_id" value="<%=comp.getUsuario_id()%>">
                    <input type="hidden" name="itinerario_id" value="<%=comp.getItinerario_id()%>">
                    <input type="hidden" name="num_asiento" value="<%=comp.getNum_asiento()%>">   
                    <td>
                        <input type="submit" name="submit" value="eliminar">    
                    </td>
                </form>
                <td>
                    <%--<a class="btnAsiento"  name="btnAsiento" onclick="editarDatos(<%=comp.getUsuario_id()%>,'<%=comp.getNombre()%>','<%=comp.getApepat()%>','<%=comp.getApemat()%>','<%=comp.getSexo()%>',<%=comp.getTelefono()%>,<%=comp.getEdad()%>,<%=comp.getNumdoc()%>)"><input type="button" value="Editar mis datos"></a>--%>
                    <%--<a class="btnAsiento"  name="btnAsiento" onclick="editarDatos(<%=comp.getUsuario_id()%>,'<%=comp.getNombre()%>','<%=comp.getApepat()%>','<%=comp.getApemat()%>','<%=comp.getSexo()%>',<%=comp.getTelefono()%>,<%=comp.getEdad()%>,<%=comp.getNumdoc()%>)"><input type="button" value="Editar mis datos"></a>--%>
                </td>

                </tr>
                <%}%>
            </table>
            <div>
                <form action="../U01_Controlador" method="post">
                    <input type="hidden" name="cuenta_id" value="<%=cuenta_id%>">
                    <input type="hidden" name="accion" value="pagar-pasajes">
                    <input type="submit" name="submit" value="Pagar" class="pagar">
                </form>
            </div>
        </section>
        <%}%>
    </body>
</html>
