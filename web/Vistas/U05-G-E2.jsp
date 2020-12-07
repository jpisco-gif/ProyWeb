
<%@page import="Modelo.U05_Admi"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <script src="../js/U05-G-A2-validar.js"></script>
        <title>Modificacion de Registros</title>
    </head>
    <body>
       <% 
       U05_AdmiDao dao=new U05_AdmiDao();
       int cuenta_id=Integer.parseInt(request.getParameter("val"));
       U05_Admi p=(U05_Admi)dao.list(cuenta_id);
       %>
       
       
       
       
       <div class="w3-padding-large" id="contenido">
       <h1 class="w3-animate-right">Modificar informacion personal</h1><hr><br>    
       <form action="../U05_Controlador_Admi" onsubmit="return validar();" >
           <table class="w3-card-4 w3-centered" id="customers" border="1">
                    <tbody>
                       
  
                        <tr>
                            <td>Nombres:</td>
                            <td> <input type="text" id="txtNombres" name="txtNombres" value="<%=p.getNombres()%>" /> </td>
                        </tr>
                        <tr>
                            <td>Apellido Paterno:</td>
                            <td> <input type="text" id="txtApellido_paterno" name="txtApellido_paterno" value="<%=p.getApellido_paterno()%>" /> 
                            <input type="hidden" name="txtCuenta_id" value="<%=p.getCuenta_id()%>" /> </td>
                        </tr>
                        <tr>
                            <td>Apellido Materno:</td>
                            <td> <input type="text" id="txtApellido_materno" name="txtApellido_materno" value="<%=p.getApellido_materno()%>" /> </td>
                        </tr>
                        <tr>
                            <td>Sexo:</td>
                            <td> <input type="text" id="txtSexo" name="txtSexo" value="<%=p.getSexo()%>" /> </td>
                        </tr>
                        <tr>
                            <td>Telefono:</td>
                            <td> <input type="text" id="txtTelefono" name="txtTelefono" value="<%=p.getTelefono()%>" /> </td>
                        </tr>
                       <tr>
                            <td>Edad:</td>
                            <td> <input type="text" id="txtEdad" name="txtEdad" value="<%=p.getEdad()%>" /> </td>
                        </tr>
                        <tr>
                            <td>DNI :</td>
                            <td> <input type="text" id="txtCod_documento" name="txtCod_documento" value="<%=p.getCod_documento()%>" /> </td>
                        </tr>
                        <tr>
                            <td colspan="2"> <input type="submit" value="Actualizar2" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>
                       <br>     <a href="U05-G-cuentas.jsp"><input type="button" value="Regresar"></a>
       </form>
       </div>
        
    </body>
</html>

