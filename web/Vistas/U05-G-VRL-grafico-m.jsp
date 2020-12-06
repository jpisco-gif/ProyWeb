
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page import="java.io.*"%>

<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.general.*"%>



<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Ventas_Ruta"%>
<%@page import="ModeloDao.U05_Ventas_RutaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
                String ruta;
                float ventas;
                String mes;
                
                DefaultCategoryDataset data=new DefaultCategoryDataset();
             
                    
                U05_Ventas_RutaDao dao=new U05_Ventas_RutaDao();
                List<U05_Ventas_Ruta> list=dao.listar();
                Iterator<U05_Ventas_Ruta> iter=list.iterator();
                U05_Ventas_Ruta per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                    
                    ruta=per.getRuta();
                    ventas=per.getVentas();
                    mes=per.getMes();
 
                        
              
                    data.addValue(ventas,ruta,"GERENCIA");
                  
                    
                     }
                 
                    JFreeChart grafico=ChartFactory.createBarChart3D("Ventas por ruta","rutas", "Ventas", data);
             
           
                    response.setContentType("image/JPEG");
                    OutputStream sa=response.getOutputStream();
                    ChartUtilities.writeChartAsJPEG(sa,grafico,640,360);
                    
                    
                    
                    %>
        
        
    </body>
</html>
