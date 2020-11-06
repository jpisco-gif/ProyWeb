<%-- 
    Document   : u04-logout
    Created on : 30/10/2020, 02:56:24 AM
    Author     : Usuario
--%>

<% 
        HttpSession sesion = request.getSession();

   
       sesion.invalidate();
           
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Cuenta cerrada con exito');");
            out.println("location='../Vistas/U04-index.jsp';");
            out.println("</script>");

            
            
       
      
   

   
%>


