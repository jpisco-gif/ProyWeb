<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

<%@page import="Modelo.U03_VentasUltEn"%>
<%@page import="Modelo.U03_VentasEnDia"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U03_VentasEnco"%>
<%@page import="ModeloDao.U03A_EncomiendaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int cuenta_id = 0;
    int log_id = 0;
    String usuario = "";
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
        log_id = (Integer) session.getAttribute("log_id");
        usuario = String.valueOf(session.getAttribute("usuario"));
    } catch (Exception e) {
       response.sendRedirect("U04-login.jsp");
    }


%>
<!DOCTYPE html>
<html lang="en">    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <title>Administración</title>
    </head>
    <body class="admin">
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
            <div id="content">
                <section class="py-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <h1 class="font-weight-bold mb-0">Bienvenido <%=usuario%></h1>
                            <p class="lead text-muted">Revisa la ultima informacion</p> 
                        </div>
                        <!--<div class="col-lg-3 d-flex">
                            <button class="btn btn-primary w-100 align-self-center">Imprimir</button>
                        </div>-->
                    </div>
                </div>
            </section>
            <section class="py-3">
                <div class="container">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <%
                                    U03A_EncomiendaDao daom = new U03A_EncomiendaDao();
                                    List<U03_VentasEnco> list = daom.listarMes();
                                    Iterator<U03_VentasEnco> iter = list.iterator();
                                    U03_VentasEnco env = null;
                                %>

                                <%
                                    while (iter.hasNext()) {
                                        env = iter.next();

                                %>

                                <div class="col-lg-3  d-flex stat my-2">
                                    <div class="mx-auto">
                                        <h6 class="text-muted">Ingreso del Mes de <%= env.getFechaA()%> </h6>
                                        <h3 class="font-weight-bold">S/.<%= env.getVentas()%></h3>
                                    </div>
                                </div>
                                <div class="col-lg-3 d-flex  stat my-2">
                                    <div class="mx-auto">
                                        <h6 class="text-muted">Total de encomiendas </h6>
                                        <h3 class="font-weight-bold"><%= env.getEnco()%></h3>                                     
                                    </div>
                                </div><%}%>                                   

                            </div>
                        </div>
                    </div>
                </div>
            </section>                   
            <section class=" py-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 my-3">
                            <div class="card rounded-0">
                                <div class="card-header bg-light">
                                <h6 class="font-weight-bold mb-0">Ganancia por los ultimos tres días</h6>
                                </div>
                                <div class="card-body">
                                    <iframe src="U03-GraficoVentasD.jsp" style="border:none;"  name="iframe" height="600px" width="640px" title="Iframe Example"></iframe>
                                </div>
                            </div>
                        </div>
                        <%
                                    U03A_EncomiendaDao dao = new U03A_EncomiendaDao();
                                    List<U03_VentasUltEn> listf = dao.listarUlt();
                                    Iterator<U03_VentasUltEn> iterf = listf.iterator();
                                    U03_VentasUltEn envf = null;
                                %>

                                
                        <div class="col-lg-4 my-3">
                            <div class="card rounded-0">
                                <div class="card-header bg-light">
                                    <h6 class="font-weight-bold mb-0">Encomiendas recientes</h6>
                                </div>
                                <div class="card-body">
                                    <%
                                    while (iterf.hasNext()) {
                                        envf = iterf.next();

                                %>
                                    <div class="d-flex border-bottom py-1">
                                        <div class="d-flex m-3">
                                            <h3 class=" align-self-center mb-0"><i class="icon ion-md-cash"></i> </h3>
                                        </div>
                                        <div class="align-self-center">
                                            <h6 class="d-inline-block mb-0"> S/ <%= envf.getMonto()%></h6><span class="badge badge-success ml-2"><%= envf.getPeso()%> Kg.</span>
                                            <small class="d-block text-muted"><%= envf.getCiudad()%></small>
                                        </div>
                                    </div><%}%>
                                    <a href="U03A-listarEn.jsp"><button class="btn btn-info w-100">Ver todos</button></a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>
        </div>
        <div class="dropdown-divider"></div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha256-t9UJPrESBeG2ojKTIcFLPGF7nHi2vEc7f5A2KpH/UBU=" crossorigin="anonymous"></script>
        
        <script>
            var ctx = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(ctx, {
        
                type: 'bar',
                data: {
                    labels: ['Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto'],
                    datasets: [{
                            label: 'Porcentaje de Ganancia',
                            data: [12, 19, 3, 5, 2, 3],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                    }
                }
            });
        </script> -->

    </body>
</html>

