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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="../Css/newcss.css">
        <title>Listado General</title>
    </head>
    <body>
        
        
        
        
        <!--Contenedor-->
          <div class="contenedor informe">
            <!--headermain-->
              <div class="headermain">
                <!--Header-->
                  <header>
                    <a href="index.html" class="logo"><img src="U02.png" alt="" /></a>
                      <!--logo-->
                  </header>
  
                  <!--Nav-->
                    <nav class="menu-lateral">
                      <ul>
                        <li class="reporte">
                          <h4>Gerencia</h4>
                        </li>
                        <li class="Home"><a href="U05-G-index.jsp">Home</a></li>
                        <li class="Reuniones"><a href="U05-G-cuentas.jsp">Cuentas</a></li>
                        
                        
                        <div class="dropdown">
                        <button class="dropbtn">Ventas</button>
                        <div class="dropdown-content">
                        <a href="../U05_Controlador_Ventas_Mes?accion=listar">Venta por Mes</a>
                        <a href="../U05_Controlador_Ventas_Ruta?accion=listar">Venta por Ruta</a>
                        <a href="../U05_Controlador_Ventas_Clase?accion=listar">Venta por clase</a>
                        </div>
                        </div>
                        
                        <li class="Personal"><a href="#">Cerrar sesion</a></li>
                      </ul>                    </nav><!--  
                      Main
                    --><main>    
                      <section class="reporte-grafico">
                       

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"><h1>Ventas por clase</h1><hr></div>
                            <div class="finanzas_parrafo">
                                
                              
                              
                            <div>
                      
         
                            <table border="1">
                            <thead>
                    
                            <tr>
                                <th>Clase</th>
                                <th>Ventas</th>
                                <th>Mes</th>
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
                                <td><%=per.getMes() %></td>
                            </tr>
                            <% } %>
                            </tbody>
                
                            </table>
                
                

                            </div>
                              
                                
                                
                                
                            <iframe src="U05-G-VLC-grafico.jsp" name="iframe_b" height="400px" width="1200px" title="Iframe Example"></iframe>
                              
                  
                            
                                
                                
                              

                              
                            
                            
                            </div>
                          </div>
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
</html>

