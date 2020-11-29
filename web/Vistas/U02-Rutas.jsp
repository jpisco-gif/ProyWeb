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

        <!--Contenedoressss-->
        <div class="contenedor informe">
            <!--headermain-->
            <div class="headermain">
                <!--Header-->
                <header>
                    <a href="../index.jsp" class="logo"><img src="file:///C:/Users/Benjamin/Desktop/logo2.svg" alt="" /></a>
                    <!--logo-->
                </header>


                <!--Nav-->
                <nav class="menu-lateral">
                    <ul>
                        <li class="reporte">
                            <h4><strong> Reportes</strong></h4>
                        </li>
                        <li class="usuarios"><a href="U02-usuario.html">Usuarios</a></li>
                        <li class="viajes "><a href="U02-viajes.html">Viajes</a></li>
                        <li class="encomiendas"><a href="U02_Controlador?accion=listar">Encomiendas</a></li>
                        <li class="perfil"><a href="U02-perfil.html">Perfil</a></li>
                    </ul>
                </nav><!--  
                    Main
                --><main>     
                    <section class="reporte-grafico">
                        <p>Viajes</p>
                        <br></br>

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
                                        <td><%=per.getCosto()%></td>
                                        <td><%=per.getDuracion()%></td>
                                        <td><%=per.getDescripcion()%></td>
                                        <td><a onclick="editarDatos(<%=per.getRuta()%>)"><input type="button" value="Editar"></a></td>
                                        
                                        <td><a href="../U02_Controlador?accion=eliminar&ruta_id=<%=per.getRuta()%>" ><input type="button" value="Eliminar"></a> </td> 

                                    </tr>
                                    <% }%>
                                </tbody>

                            </table>
                        </div>

                    </section>
                </main>
                <div class="stickyfooter">

                </div>
            </div><!--headermain-->
            <!--Footer-->
            <footer>

            </footer>
        </div><!--Contenedor-->
    </body>
    <script>

        function editarDatos(val) {
            $.post("U02-Editar.jsp", {val: val})
                    .done(function (data) {
                        $('#mostrar-datos').html(data);
                        //                console.log(data);
                    });
        }
    </script>
</html>


