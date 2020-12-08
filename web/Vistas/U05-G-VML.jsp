<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Ventas_Mes"%>
<%@page import="ModeloDao.U05_Ventas_MesDao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Gerencia</title>
    </head>
    <body class="admin">
         <jsp:include page="U05-Cabecera.jsp"></jsp:include>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            
                            
                            <section class="reporte-grafico">
                       

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo w3-animate-right"><h1>Ventas por Mes</h1><hr></div>
                            <div class="finanzas_parrafo">
                                
                              
                              
                            <div>
        
         
                            <table class="w3-card-4" id="customers" border="1">
                            <thead>
                    
                            <tr>
                            <th>Mes</th>
                            <th>Ventas</th>
                            </tr>
                    
                            </thead>
                            <%
                            U05_Ventas_MesDao dao=new U05_Ventas_MesDao();
                            List<U05_Ventas_Mes> list=dao.listar();
                            Iterator<U05_Ventas_Mes> iter=list.iterator();
                            U05_Ventas_Mes per=null;
                            while(iter.hasNext())
                                {
                                per=iter.next();
                            %>
                            <tbody>
                            <tr>
                            <td><%=per.getMes() %></td>
                            <td><%=per.getVentas() %></td>
                            </tr>
                            <% } %>
                            </tbody>
                
                            </table>

            
                            </div>
                              
                                
                            <br><br>     
                            <a href="U05-G-VML-grafico.jsp">Expandir grafico</a>   
                            <br><br> 
                            <iframe src="U05-GVML-grafico-m.jsp"  style="border:none;" name="iframe_b" height="460px" width="740px" title="Iframe Example"></iframe>
                              
                  
                            
                                
                                
                              

                              
                            
                            
                            </div>
                          </div>
                        </div>

                        

                        

                        

                      </section>
                            
                            
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

