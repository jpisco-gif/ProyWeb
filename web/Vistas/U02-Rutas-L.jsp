<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U02_Ruta"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U02_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Administración</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' href='../Css/newcss.css'>
        <script type="text/javascript" src="../js/jquery.js"></script>

    </head>
    <body onload="javascript:window.print()">
        
            <div id="content">
                <section>
                    <div class="container">
                        <div class="row" id="customers">
                            <div class="col-lg-10">
                                
                                
                                <div id="mostrar-datos">
                                    <a href="javascript:window.print()">Imprimir</a> <a href="U02-Rutas.jsp"><input type="button" value="Regresar"></a>
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>RUTAS</th>
                                                <th>EMBARQUE</th>
                                                <th>LLEGADA</th>
                                                <th>COSTO DE LA RUTA</th>
                                                <th>DURACION DEL VIAJE</th>
                                                <th>DESCRIPCION DEL VIAJE</th>
                                                

                                            </tr>
                                        </thead>
                                    <%
                                        U02_RutasDao dao = new U02_RutasDao();
                                        List<U02_Ruta> list = dao.listar();
                                        Iterator<U02_Ruta> iter = list.iterator();
                                        U02_Ruta per = null;
                                        while (iter.hasNext()) {
                                            per = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%=per.getRuta()%></td>
                                            <td><%=per.getEmbarque()%></td>
                                            <td><%=per.getLlegada()%></td>
                                            <td><%=per.getCosto()%></td>
                                            <td><%=per.getDuracion()%></td>
                                            <td><%=per.getDescripcion()%></td>
                                            

                                        </tr>
                                        <% }%>
                                    </tbody>

                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
    <div class="dropdown-divider"></div>
</div>


</body>
</html>


