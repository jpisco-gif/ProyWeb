<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>
<%@page import="java.io.*"%>

<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.general.*"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Ventas_Clase"%>
<%@page import="ModeloDao.U05_Ventas_ClaseDao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
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
                            <div class="finanzas_titulo"><h1>Ventas por clase</h1><hr></div>
                            <div class="finanzas_parrafo">
                                
                              
                              
                            <div>
                      
         
                            <table id="customers" border="1">
                            <thead>
                    
                            <tr>
                                <th>Clase</th>
                                <th>Ventas</th>
                             
                            </tr>
                    
                            </thead>
                            <%
                            U05_Ventas_ClaseDao dao=new U05_Ventas_ClaseDao();
                            List<U05_Ventas_Clase> list=dao.listar();
                            Iterator<U05_Ventas_Clase> iter=list.iterator();
                            U05_Ventas_Clase per=null;
                            while(iter.hasNext())
                                {
                                per=iter.next();
                            %>
                            <tbody>
                            <tr>
                                <td><%=per.getClase() %></td>
                                <td><%=per.getVentas() %></td>
                           
                            </tr>
                            <% } %>
                            </tbody>
                
                            </table>
                
                

                            </div>
                              
                                
                            <br><br>      
                            <a href="U05-VLC-grafico2.jsp">Expandir grafico</a>   
                            <br><br>       
                                
                            <iframe src="U05-G-VLC-grafico.jsp" name="iframe_b" height="500px" width="500px" title="Iframe Example"></iframe>
                              
                  
                            
                                
                                
                              

                              
                            
                            
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

