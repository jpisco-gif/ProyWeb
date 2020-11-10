<%
    int cuenta_id = 1;
%>
<%@page import="Modelo.U01_Comprobante"%>
<%@page import="ModeloDao.U01_ComprobanteDao"%>
<%@page import="Modelo.U01_Ruta"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="general">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Css/newcss.css">
        <link rel="stylesheet" herf="Css/newcss.css">
        <script type="text/javascript" src="../js/jquery.js"></script>

        <title>Comprar pasaje</title>
    </head>
    <body>
        <header class="header">
            <div class="contenedor">
                <h1 class="logo">Llama bus</h1>
                <span class="icon-menu" id="btn-menu"></span>
                <nav class="nav" id="nav">
                    <ul class="menu">
                        <li class="menu__item"><a class="menu__link elect" href="#">Inicio</a></li>
                        <li class="menu__item"><a class="menu__link" href="U04-Servicio.jsp">servicios</a></li>
                        <li class="menu__item"><a class="menu__link" href="U04-Nosotros.jsp">Nosotros</a></li>
                        <li class="menu__item"><a class="menu__link" href="U04-AtencioAlCliente.jsp">Atencion al cliente</a></li>
                        <li class="menu__item"><a class="menu__link" href="u01-comprarPasaje.jsp">compra de pasaje</a></li>
                        
                            <%

                                HttpSession sesion = request.getSession();
                                String usuario;
                                String contraseña;
                                if (sesion.getAttribute("usuario") != null && sesion.getAttribute("contraseña") != null) {
                                    usuario = sesion.getAttribute("usuario").toString();
                                    contraseña = sesion.getAttribute("contraseña").toString();
                                    out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link' href='../Vistas/u04-logout.jsp'>Logout</a>");
                                    out.println("</li>");

                                } else {
                                    out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link' href='../Vistas/U04-login.jsp'>Login</a>");
                                    out.println("</li>");

                                }
                                {

                                }
                            %> 
                            <li>id de la cuenta: ${sessionScope.cuenta_id};</li>

                    </ul>
                </nav>
            </div>
        </header>
        <section class="info-rutas">
            <h3>Horarios disponibles</h3>
            <table border="1">
                <tr>
                    <td>Cod. itinerario</td>
                    <td>id origen</td>
                    <td>id destino</td>
                    <td>Origen</td>
                    <td>Destino</td>
                    <td>P. embarque</td>
                    <td>P. llegada</td>
                    <td>Duración</td>
                    <td>Fecha</td>
                    <td>Hora</td>
                    <td>Precio</td>
                    <td>Asientos</td>
                </tr>
                <%
                    U01_RutasDao dao = new U01_RutasDao();
                    List<U01_Ruta> list = dao.consultar_todos();
                    Iterator<U01_Ruta> iter = list.iterator();
                    U01_Ruta ruta = null;
                    while (iter.hasNext()) {
                        ruta = iter.next();
                %>
                <tr>
                    <td><%=ruta.getItinerarios_id()%></td>
                    <td><%=ruta.getId_origen()%></td>
                    <td><%=ruta.getId_destino()%></td>
                    <td><%=ruta.getOrigen()%></td>
                    <td><%=ruta.getDestino()%></td>
                    <td><%=ruta.getPuerta_embarque()%></td>
                    <td><%=ruta.getPuerta_llegada()%></td>
                    <td><%=ruta.getDuracion()%></td>
                    <td><%=ruta.getFecha()%></td>
                    <td><%=ruta.getHora()%></td>
                    <td><%=ruta.getPrecio()%></td>
                    <td>
                        <a class="btnAsiento"  name="btnAsiento" onclick="EscoAsiento(<%=ruta.getItinerarios_id()%>,<%=ruta.getPrecio()%>)"><input type="button" value="Ver asientos"></a>

                    </td>
                </tr>
                <% }%>
            </table>
        </section>
        <section class="asiento-form">
            <div id="contenido">

            </div>
            <div id="contenido2">

            </div>
        </section>
        <section class="info-rutas">
            <h3>Sus viajes pendientes</h3>
            <table border="1">
                <tr>
                    <td>Nombres</td>
                    <td>Apellido paterno</td>
                    <td>Apellido materno</td>
                    <td>Nro. documento</td>
                    <td>Nro. asiento</td>
                    <td></td>
                    
                </tr>
                <%
                    U01_ComprobanteDao dao2 = new U01_ComprobanteDao();
                    List<U01_Comprobante> list2 = dao2.mostrar_pasaje(cuenta_id);
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
                    <td><%=comp.getNum_asiento()%></td>
                    <td><input type="button" value="eliminar"></td>
                </tr>
                <% }%>
            </table>
            <div>
                <input type="button" value="Pagar todos">
            </div>
        </section>

    </body>
    <script>

        function EscoAsiento(val, val2) {
            $.post("u01-verAsientos.jsp", {val: val, val2: val2})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }

        function ingresaDatos(val, val2, val3) {
            $.post("u01-ingresarDatos.jsp", {val: val, val2: val2, val3: val3})
                    .done(function (data) {
                        $('#contenido2').html(data);
//                console.log(data);
                    });
        }
    </script>
</html>
