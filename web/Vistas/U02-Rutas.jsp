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
    <body>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
            <div id="content">
                <section>
                    <div class="container">
                        <div class="row" id="customers">
                            <div class="col-lg-10">
                                <div class="col-lg-3">
                                <h1>Viajes</h1>
                                <a href="U02-Add.jsp" class="font-weight-bold ">Agregar nueva ruta <i class="icon ion-md-pin mr-2"></i></a>             
                            </div>                                  
                                 <div class="col-lg-3 d-flex">
                                    <a href="U03-Imp-ru.jsp"> <button class="btn btn-info w-100 align-self-end">Imprimir</button></a>
                            </div>
                                <div id="mostrar-datos">
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
                                            <td>S/. <%=per.getCosto()%></td>
                                            <td><%=per.getDuracion()%> horas</td>
                                            <td><%=per.getDescripcion()%></td>
                                            <td><a onclick="editarDatos(<%=per.getRuta()%>)"><button class="btn btn-warning w-100" value="Editar">Editar</button></a></td>

                                            <td><a href="../U02_Controlador?accion=eliminar&ruta_id=<%=per.getRuta()%>" onclick="return mensaje();" ><button class="btn btn-danger w-100" value="Eliminar">Eliminar</button></a> </td> 

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

<script>

    function editarDatos(val) {
        $.post("U02-Editar.jsp", {val: val})
                .done(function (data) {
                    $('#mostrar-datos').html(data);
                    //                console.log(data);
                });
    }
</script>
<script type="text/javascript">
                                        function mensaje(e) {
                                            if (confirm("¿Estás seguro que deseas eliminiar el registro?")) {
                                                return true;
                                            } else {
                                                return false; //cancela el evento por defecto de ir a la pagina
                                            }
                                        }
                                    </script>
</body>
</html>


