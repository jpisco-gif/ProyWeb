
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
        <script src="../js/U01-ruta-validar.js"></script>
        <link rel="stylesheet" href="../Css/newcss.css">
        <style>
            body{
                background-image: url(../Imagenes/bg/bg-1.jpg);
                background-size: cover ;
            }
        </style>
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
                <form method="post" action="../U01_Controlador" class="labels-formulario" onsubmit="return validar1();" >
                    <div class="itemss">
                        <label>Origen</label>
                        <select name="origen" id="origen">
                            <option value=''>Seleccione</option>

                            <%                                String aux = "";
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
                        <select name="destino" id="destino">
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
                        <input type="date" name="fecha" id="fecha" value=''>
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
            <table class="w3-card-4 w3-centered" id="customers" border="1">
                <tr class="cabecera-tabla">
                    <!--                    <td>Cod. itinerario</td>
                                        <td>id origen</td>
                                        <td>id destino</td>-->
                    <td class="cabecera-tablahist">Origen</td>
                    <td class="cabecera-tablahist">Destino</td>
                    <!--                    <td>P. embarque</td>
                                        <td>P. llegada</td>-->
                    <td class="cabecera-tablahist">Duración</td>
                    <td class="cabecera-tablahist">Fecha</td>
                    <td class="cabecera-tablahist">Hora de salida</td>
                    <td class="cabecera-tablahist">Precio</td>
                    <td class="cabecera-tablahist">Asientos</td>
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
        <% }
        } catch (Exception e) {
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
            <table class="w3-card-4 w3-centered" id="customers" border="1">
                <tr>
                    <td class="cabecera-tablahist">persona id</td>
                    <td class="cabecera-tablahist">Nombres</td>
                    <td class="cabecera-tablahist">Apellido paterno</td>
                    <td class="cabecera-tablahist">Apellido materno</td>
                    <td class="cabecera-tablahist">Nro. documento</td>
                    <td class="cabecera-tablahist">Nro. asiento</td>
                    <td class="cabecera-tablahist"></td>

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
                        <input type="submit" name="submit" value="Eliminar">    
                    </td>
                </form>
                <td>
                    <%--<a class="btnAsiento"  name="btnAsiento" onclick="editarDatos(<%=comp.getUsuario_id()%>,'<%=comp.getNombre()%>','<%=comp.getApepat()%>','<%=comp.getApemat()%>','<%=comp.getSexo()%>',<%=comp.getTelefono()%>,<%=comp.getEdad()%>,<%=comp.getNumdoc()%>)"><input type="button" value="Editar mis datos"></a>--%>
                    <a class="btnAsiento"  name="btnAsiento" onclick="editarDatos(<%=comp.getUsuario_id()%>, '<%=comp.getNombre()%>', '<%=comp.getApepat()%>', '<%=comp.getApemat()%>', '<%=comp.getSexo()%>',<%=comp.getTelefono()%>,<%=comp.getEdad()%>,<%=comp.getNumdoc()%>)"><input type="button" value="Editar mis datos"></a>
                </td>

                </tr>
                <%}%>
            </table>
            <div>
                <!--
            <form action="../U01_Controlador" method="post">
                <input type="hidden" name="cuenta_id" value="<%=cuenta_id%>">
                <input type="hidden" name="accion" value="pagar-pasajes">
                <input type="submit" name="submit" value="Pagar" class="pagar">
            </form>-->
                <a href="#" onclick="pagarPasaje()"><input type="button" value="Pagar"></a>
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
        function editarDatos(val, val2, val3, val4, val5, val6, val7, val8) {
            $.post("u01-editarDatos.jsp", {val: val, val2: val2, val3: val3, val4: val4, val5: val5, val6: val6, val7: val7, val8: val8})
                    .done(function (data) {
                        $('#contenido3').html(data);
                        //                console.log(data);
                    });
        }
        function pagarPasaje() {
            $.post("u01-pagarPasaje.jsp", {})
                    .done(function (data) {
                        $('#contenido4').html(data);
                        //                console.log(data);
                    });
        }
    </script>
</body>
</html>
