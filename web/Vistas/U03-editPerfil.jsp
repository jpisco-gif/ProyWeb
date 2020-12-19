<%-- 
    Document   : U03-editPerfil
    Created on : 19/12/2020, 04:45:03 PM
    Author     : Javier Pisco
--%>

<%@page import="Modelo.U05_Admi"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10">
                            
       <% 
       U05_AdmiDao dao=new U05_AdmiDao();
       int cuenta_id=Integer.parseInt(request.getParameter("cuenta_id"));
       U05_Admi p=(U05_Admi)dao.list(cuenta_id);
       %>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       <div class="w3-padding-large center-block" >
       <h1 class="w3-animate-right">Modificar Cuenta</h1><hr><br><br>    
       <form action="../U05_Controlador_Admi" onsubmit="return validar();">
           <table class="w3-card-4 w3-centered" id="customers"  border="1">
                    <tbody>
                        <tr>
                            <td>Usuario:</td>
                            <td> <input type="text" id="txtUsuario" name="txtUsuario" value="<%=p.getUsuario()%>" /> </td>
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td> <input type="text" id="txtContrasena" name="txtContrasena" value="<%=p.getContraseña()%>" /> 
                                <input type="hidden" name="txtCuenta_id" value="<%=p.getCuenta_id()%>" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td> <input type="text" id="txtEmail" name="txtEmail" value="<%=p.getEmail()%>" /> </td>
                        </tr>
                        
                        
                        <tr>
                            <td colspan="2"> <input type="submit" value="ActualizarA" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>
                        
                        <br><br>
                        
                        <a href="A_Index.jsp"><input type="button" value="Regresar"></a>
       </form>
       </div> 
                        </div>
                            </div>
                        </div>

                    </section>
                </div>
            </div>
            <div class="dropdown-divider"></div>
        </div>
    </body>
    
    <script>
          function regresar() {
            $.post("A_Index.jsp", {val: val})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }
        
       
    </script>
</html>
