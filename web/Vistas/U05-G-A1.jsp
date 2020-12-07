<%-- 
    Document   : add
    Created on : 17/10/2020, 06:45:43 PM
    Author     : Julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Datos de Administrador</title>
        <script src="../js/U05-G-A1-validar.js"></script>
    </head>
    <body>
        <div class="w3-padding-large" >
            <h1 class="w3-animate-right">Agregar Administrador</h1><hr><br>
            <form action="../U05_Controlador_Admi" onsubmit="return validar();">
                <table class="w3-card-4 w3-centered" id="customers" border="1">
                    <tbody>
                        <tr>
                            <td>Usuario:</td>
                            <td> <input type="text" id="txtUsuario" name="txtUsuario" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td> <input type="text" id="txtContrasena" name="txtContrasena" value="" />  </td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td> <input type="text" id="txtEmail" name="txtEmail" value="" /> </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"> <input type="submit" value="Agregar" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>

            <br>     <a href="U05-G-cuentas.jsp"><input type="button" value="Regresar"></a>
                
                
            </form>
        </div>
    </body>
</html>
