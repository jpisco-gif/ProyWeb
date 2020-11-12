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
    </head>
    <body>
        <div>
            <h1>Agregar Administrador</h1>
            <form action="U05_Controlador_Admi">
                <table border="1">
                    <tbody>
                        <tr>
                            <td>Usuario:</td>
                            <td> <input type="text" name="txtUsuario" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td> <input type="text" name="txtContrasena" value="" />  </td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td> <input type="text" name="txtEmail" value="" /> </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"> <input type="submit" value="Agregar" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>

                <a href="U05_Controlador_Admi?accion=listar">Regresar</a>
                
                
            </form>
        </div>
    </body>
</html>
