<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Rendimiento"%>
<%@page import="Modelo.U05_Rendimiento"%>
<%@page import="ModeloDao.U05_RendimientoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="../js/jquery.js"></script>
        <title>Gerencia</title>
    </head>
    <body class="admin" style="overflow: visible">
        <jsp:include page="U05-Cabecera.jsp"></jsp:include>
        <div class="ex1">
        <div id="contenido" >
            <section >
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">


                            <section class="reporte-grafico">
                                

                                <div class="finanzas">

                                    <div class="finanzas_texto">
                                        <div class="finanzas_titulo"></div>
                                        <div class="finanzas_parrafo">

                                        <div>
                                            <h1 class="w3-animate-right">Rendimiento en Terminales</h1><hr>
                                         <a href="#" onclick="añadirRendimiento()"><input  type="button" value="Agregar nuevo"></a> <a href="U05-G-R-L.jsp"><input type="button" value="Imprimir"></a>
                                         <br><br>
                                        <table class="w3-card-4 w3-centered" id="customers" border="1">
                                            <thead>

                                                <tr>
                                                    <th>rendimiento_id</th>
                                                    <th>terminal_id</th>
                                                    <th>ciudad</th>
                                                    <th>puntuacion</th>
                                                    <th>incidencias</th>
                                                    <th>mes</th>
                                                    <th>modificar</th>
                                                </tr>

                                            </thead>
                                            <%
                                                U05_RendimientoDao dao = new U05_RendimientoDao();
                                                List<U05_Rendimiento> list = dao.listar();
                                                Iterator<U05_Rendimiento> iter = list.iterator();
                                                U05_Rendimiento per = null;
                                                while (iter.hasNext()) {
                                                    per = iter.next();
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=per.getRendimiento_id()%></td>
                                                    <td><%=per.getTerminal_id()%></td>
                                                    <td><%=per.getCiudad()%></td>
                                                    <td><%=per.getPuntuacion()%></td>
                                                    <td><%=per.getIncidencias()%></td>
                                                    <td><%=per.getMes()%></td>
                                                    <td>
                                                       
                                                        <a href="#" onclick="editarRendimiento(<%=per.getRendimiento_id()%>)"><input class="w3-button w3-tiny w3-circle w3-green" type="button" value="+"></a>
                                                    </td>
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
                </div>

            </section>
        </div>
    
    <div class="dropdown-divider"></div>






<script>

        function editarRendimiento(val) {
            $.post("U05-G-R-E.jsp", {val: val})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }
        
        
       
        
        function añadirRendimiento() {
            $.post("U05-G-A-R.jsp", {})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }

    </script>
    </div>
    </body>
</html>

