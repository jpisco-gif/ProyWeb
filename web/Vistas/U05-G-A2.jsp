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
                            <td>Nombres:</td>
                            <td> <input type="text" name="txtNombres" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Apellido Paterno:</td>
                            <td> <input type="text" name="txtApellido_paterno" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Apellido Materno:</td>
                            <td> <input type="text" name="txtApellido_materno" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Sexo:</td>
                            <td> <input type="text" name="txtSexo" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Telefono:</td>
                            <td> <input type="text" name="txtTelefono" value="" /> </td>
                        </tr>
                       <tr>
                            <td>Edad:</td>
                            <td> <input type="text" name="txtEdad" value="" /> </td>
                        </tr>
                        <tr>
                            <td>DNI :</td>
                            <td> <input type="text" name="txtCod_documento" value="" /> </td>
                        </tr>
                        
                        
                        
                        
                        <tr>
                            <td colspan="2"> <input type="submit" value="Agregar2" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>

                
                <a href="U05_Controlador_Admi?accion=listar">Regresar</a>
                
            </form>
        </div>
    </body>
</html>
