<%-- 
    Document   : U03_GraficoVentasD
    Created on : 19/12/2020, 04:15:36 AM
    Author     : Javier Pisco
--%>

<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="Modelo.U03_VentasEnDia"%>
<%@page import="ModeloDao.U03A_EncomiendaDao"%>
<%@page import="Modelo.U03_VentasEnco"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Ventas por mes</h1>
         
            <%
                String mes;
                int ventas;
                
                DefaultCategoryDataset data=new DefaultCategoryDataset();
             
                    
                /*U03A_EncomiendaDao dao=new U03A_EncomiendaDao();
                List<U03_VentasEnDia> list=dao.listarDia();
                Iterator<U03_VentasEnDia> iter=list.iterator();
                U03_VentasEnDia per=null;*/
                U03A_EncomiendaDao daom = new U03A_EncomiendaDao();
                List<U03_VentasEnco> list = daom.listarMes();
                Iterator<U03_VentasEnco> iter = list.iterator();
                U03_VentasEnco env = null;
                while(iter.hasNext())
                    {
                       %>
                            mes = "<%= env.getFechaA()%>";
                            ventas = "<%= env.getVentas()%>";
                       
                     
                    
 
                        
              
                    data.addValue(ventas,mes,"Administracion");
                  
                      <%
                    }
                    
                     
                 
                    JFreeChart grafico=ChartFactory.createBarChart3D("Ventas por Semana","Dias", "Ventas", data);
                    
                    response.setContentType("image/JPEG");
                    OutputStream sa=response.getOutputStream();
                    ChartUtilities.writeChartAsJPEG(sa,grafico,1920,1080);
                    
                    
                    
                    %>

            
        </div>
    </body>
</html>
