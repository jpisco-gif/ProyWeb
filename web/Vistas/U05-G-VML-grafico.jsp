
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page import="java.io.*"%>

<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.general.*"%>



<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.U05_Ventas_Mes"%>
<%@page import="ModeloDao.U05_Ventas_MesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../U05-Gerencia/U05-estilos.css">
        <title>Listado General</title>
    </head>
    <body>
        <div>
            <h1>Ventas por mes</h1>
         
            <%
                String mes;
                float ventas;
                
                DefaultCategoryDataset data=new DefaultCategoryDataset();
             
                    
                U05_Ventas_MesDao dao=new U05_Ventas_MesDao();
                List<U05_Ventas_Mes> list=dao.listar();
                Iterator<U05_Ventas_Mes> iter=list.iterator();
                U05_Ventas_Mes per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                    mes=per.getMes();
                    ventas=per.getVentas();
                   
 
                        
              
                    data.addValue(ventas,mes,mes);
                  
                    
                     }
                 
                    JFreeChart grafico=ChartFactory.createBarChart3D("Ventas por mes","Meses", "Ventas", data);
             
           
                    response.setContentType("image/JPEG");
                    OutputStream sa=response.getOutputStream();
                    ChartUtilities.writeChartAsJPEG(sa,grafico,500,500);
                    
                    
                    
                    %>

            
        </div>
    </body>
</html>
