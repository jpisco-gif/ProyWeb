
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page import="Modelo.U01_Ruta"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_ComprobanteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int rol_id = 0;
    int cuenta_id = 0;
    try {
            rol_id = (Integer) session.getAttribute("rol_id");
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
        <script type="text/javascript" src="../js/jquery.js"></script>
        <link rel="stylesheet" href="../Css/newcss.css">
    </head>
    <body>
        <jsp:include page="U02-Menu.jsp"></jsp:include>
        <br></br>
        <br></br>
        <section class="ingresar-datos">
            <div class="muestra-form">
                <%
                    U01_RutasDao dao3 = new U01_RutasDao();
                    List<U01_Ruta> list3 = dao3.terminales();

                %>
                <form method="post" action="../U01_Controlador" class="labels-formulario">
                    <div class="itemss">
                        <label>Origen</label>
                        <select name="origen">
                            <option value=''>Seleccione</option>

                            <%
                                String aux = "";
                                Iterator<U01_Ruta> iter_origen = list3.iterator();
                                U01_Ruta ruta_origen = null;
                                while (iter_origen.hasNext()) {
                                    ruta_origen = iter_origen.next();
                                    //if(origen == ruta_origen.getId_origen()){
                                    //    aux = "selected";
                                    //}
                            %>

                            <option value="<%=ruta_origen.getId_origen()%>"><%=ruta_origen.getOrigen()%></option>  
                            <%}%>
                        </select>
                    </div>
                    <div class="itemss">
                        <label>Destino</label>
                        <select name="destino">
                            <option value=''>Seleccione</option>
                            <%
                                String aux2 = "";
                                Iterator<U01_Ruta> iter_destino = list3.iterator();
                                U01_Ruta ruta_destino = null;
                                while (iter_destino.hasNext()) {
                                    ruta_destino = iter_destino.next();
                                    //if(destino == 3){
                                    //    aux2 = "selected";
                                    //}
                                    //else{
                                    //    aux2 = "";
                                    //}

                            %>
                            <option value="<%=ruta_destino.getId_origen()%>" <%=aux2%>><%=ruta_destino.getOrigen()%></option>  
                            <%}%>
                        </select>
                    </div>
                    <div class="itemss">
                        <label>Fecha</label>
                        <input type="date" name="fecha" value=''>
                    </div>

                    <div class="itemss">
                        <input type="hidden" name="rol_id" value="<%=rol_id%>">
                        <input type="hidden" name="accion" value="consultar-rutas">
                        <input type="submit" name="submit" value="Buscar">
                        
                    </div>
                </form>
            </div>
        </section>
             <% try {
            %>
                
        <%
            List<U01_Ruta> list = (List<U01_Ruta>) session.getAttribute("rutas");
            Iterator<U01_Ruta> iter = list.iterator();
            U01_Ruta ruta = null;
            int aux3 = list.size();
            if (aux3 != 0) {
        %>              
        <section class="info-rutas">
            <h3>Horarios disponibles</h3>
            <table class="tabla">
                <tr class="cabecera-tabla">
<!--                    <td>Cod. itinerario</td>
                    <td>id origen</td>
                    <td>id destino</td>-->
                    <td>Origen</td>
                    <td>Destino</td>
<!--                    <td>P. embarque</td>
                    <td>P. llegada</td>-->
                    <td>Duración</td>
                    <td>Fecha</td>
                    <td>Hora de salida</td>
                    <td>Precio</td>
                    <td>Asientos</td>
                </tr>
                <%
                    //U01_RutasDao dao = new U01_RutasDao();
                    //List<U01_Ruta> list = dao.consultar_ruta(1,5,"2020-10-10");
                    while (iter.hasNext()) {
                        ruta = iter.next();
                %>
                <tr class="contenido-tabla">
                    <!--<td><%=ruta.getItinerarios_id()%></td>
                    <td><%=ruta.getId_origen()%></td>
                    <td><%=ruta.getId_destino()%></td>-->
                    <td><%=ruta.getOrigen()%></td>
                    <td><%=ruta.getDestino()%></td>
                   <!-- <td><%=ruta.getPuerta_embarque()%></td>
                    <td><%=ruta.getPuerta_llegada()%></td>-->
                    <td><%=ruta.getDuracion()%> horas</td>
                    <td><%=ruta.getFecha()%></td>
                    <td><%=ruta.getHora()%></td>
                    <td>S./ <%=ruta.getPrecio()%></td>
                    <td>
                        <a class="btnAsiento"  name="btnAsiento" onclick="EscoAsiento(<%=ruta.getItinerarios_id()%>,<%=ruta.getPrecio()%>,<%=cuenta_id%>)"><input type="button" value="Ver asientos"></a>

                    </td>
                </tr>
                <% }%>
            </table>
        </section>
        <% } else {%>
        <section class='mensaje'>
            <p>No hay salidas disponibles para la fecha seleccionada</p>
        </section>
        <% }} catch (Exception e) {
            %>
            <p>Seleccione una ruta</p>
            <%
        }%>
        <section class="asiento-form">
            <div id="contenido">

            </div>
            <div id="contenido2">

            </div>
        </section>
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
                    <a class="btnAsiento"  name="btnAsiento" onclick="editarDatos(<%=comp.getUsuario_id()%>,'<%=comp.getNombre()%>','<%=comp.getApepat()%>','<%=comp.getApemat()%>','<%=comp.getSexo()%>',<%=comp.getTelefono()%>,<%=comp.getEdad()%>,<%=comp.getNumdoc()%>)"><input type="button" value="Editar mis datos"></a>
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
        <section id='contenido2'>
            
        </section>
        <section id='contenido3'>
            
        </section>
        
    </body>
    <script>

        function EscoAsiento(val, val2, val3) {
            $.post("u01-verAsientos.jsp", {val: val, val2: val2, val3: val3})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }

        function ingresaDatos(val, val2, val3, val4) {
            $.post("u01-ingresarDatos.jsp", {val: val, val2: val2, val3: val3, val4: val4})
                    .done(function (data) {
                        $('#contenido2').html(data);
//                console.log(data);
                    });
        }
        function editarDatos(val, val2, val3, val4, val5, val6, val7, val8){
            $.post("u01-editarDatos.jsp", {val:val, val2:val2, val3:val3, val4:val4, val5:val5, val6:val6, val7:val7, val8:val8})
                    .done(function (data) {
                        $('#contenido3').html(data);
//                console.log(data);
                    });
        }
    </script>
    </body>
</html>
