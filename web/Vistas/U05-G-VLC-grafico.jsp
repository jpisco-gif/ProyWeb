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
        <link rel="stylesheet" href="../U05-Gerencia/U05-estilos.css">
        <title>Listado General</title>
    </head>
    <body>
        <div>
            <h1>Ventas por Clase</h1>
         
            <table border="1">
                <thead>
                    
                    <tr>
                        <th>Clase</th>
                        <th>Ventas</th>
                        <th>Mes</th>
                    </tr>
                    
                </thead>
                <%
                String clase;
                float ventas;
                
                DefaultPieDataset data=new DefaultPieDataset();
                    
                U05_Ventas_ClaseDao dao=new U05_Ventas_ClaseDao();
                List<U05_Ventas_Clase> list=dao.listar();
                Iterator<U05_Ventas_Clase> iter=list.iterator();
                U05_Ventas_Clase per=null;
                while(iter.hasNext())
                    {
                    per=iter.next();
                    clase=per.getClase();
                    ventas=per.getVentas();
                   
 
                        
              
                    data.setValue(clase,ventas);
                  
                    
                     }
                    
                    JFreeChart grafico=ChartFactory.createPieChart("Ventas por clase", data,true,true,true);
                    response.setContentType("image/JPEG");
                    OutputStream sa=response.getOutputStream();
                    ChartUtilities.writeChartAsJPEG(sa,grafico,500,1200);
                    
                    
                    
                    %>
                    
                    
                    
                

            
        </div>
    </body>
</html>

