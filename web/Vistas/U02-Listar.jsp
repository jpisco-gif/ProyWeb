<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U02_Ruta"%>
<%@page import="ModeloDao.U02_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado General</title>
    </head>
    <body>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
            <div id="content">
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <div>
                                    
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>RUTAS</th>
                                                <th>EMBARQUE</th>
                                                <th>LLEGADA</th>
                                                <th>COSTO DE LA RUTA</th>
                                                <th>DURACION DEL VIAJE</th>
                                                <th>DESCRIPCION DEL VIAJE</th>
                                                <th colspan="2">ESTADO DE VIAJE</th>

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
                                            <td><a href="../U02_Controlador?accion=editar&ruta_id=<%=per.getRuta()%> " > Editar</a></td>
                                            <td><a href="../U02_Controlador?accion=eliminar&ruta_id=<%=per.getRuta()%>" >Eliminar</a> </td> 

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


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


</body>
</html>