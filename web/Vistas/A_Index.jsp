<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

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
        cuenta_id = 0;
        log_id = 0;
        usuario = null;
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
            <section>
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
                                <table>
                                    <thead> 
                                        <tr>
                                            <th>Mes</th>
                                            <th>Ventas</th>
                                        </tr>
                                    </thead> 

                                    <%
                                        while (iter.hasNext()) {
                                            env = iter.next();

                                    %>

                                    <tr>
                                        <td><%= env.getFechaA()%></td>
                                        <td> <%= env.getVentas()%></td> 
                                    </tr>  
                                    <%}%>

                                </table>
                                <!-- <div class="col-lg-3  d-flex stat my-2">
                                     <div class="mx-auto">
                                     <h6 class="text-muted">Ingreso del Mes de  </h6>
                                     <h3 class="font-weight-bold">S/.</h3>
                                     
                                     </div>
                                 </div>
                                 <div class="col-lg-3 d-flex  stat my-2">
                                     <div class="mx-auto">
                                     <h6 class="text-muted">Total de encomiendas </h6>
                                     <h3 class="font-weight-bold">2</h3>
                                     
                                     </div>
                                 </div>
                                     
                                 <div class="col-lg-3  d-flex stat my-2">
                                     <div class="mx-auto">
                                     <h6 class="text-muted">Ingreso de este Mes</h6>
                                     <h3 class="font-weight-bold">S/.1200</h3>
                                   
                                     </div>
                                 </div>
                                 <div class="col-lg-3  d-flex stat my-2">
                                     <div class="mx-auto">
                                     <h6 class="text-muted">Total de encomiendas</h6>
                                     <h3 class="font-weight-bold">S/.1200</h3>
                                     
                                     </div>-->
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div>
                <div class="col-lg-8 my-3">
                    <div class="card rounded-header">
                        <h6 class="font-weight-bold mb-0">Ganancia por mes de encomiendas</h6>
                    </div>
                    <div class="card-body"></div>
                    <canvas id="myChart" width="600" height="400"></canvas>
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


<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha256-t9UJPrESBeG2ojKTIcFLPGF7nHi2vEc7f5A2KpH/UBU=" crossorigin="anonymous"></script>

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
</script>
<script>

</script>

</body>
</html>

