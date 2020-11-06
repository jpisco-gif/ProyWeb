<%-- 
    Document   : U03A_addEn
    Created on : 06/11/2020, 12:27:01 AM
    Author     : V330
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Nueva Encomienda</h1>
        <div>
            <form action="U03A_Controlador">
                <table border="1">
                    <tbody>
                        <tr>
                            <td colspan="2">EMISOR </td>                        
                            <td colspan="2">RECEPTOR </td>
                        </tr>
                        <tr>
                            <td>Nombres:</td>
                            <td><input type="text" name="txtNomE" value=""/></td>
                            <td>Nombres:</td>
                            <td><input type="text" name="txtNomR" value=""/></td>
                        </tr>
                        <tr>
                            <td>Apellidos:</td>
                            <td><input type="text" name="txtApeE" value=""/></td>
                            <td>Apellidos:</td>
                            <td><input type="text" name="txtApeR" value=""/></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDniE" value=""/></td>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDniR" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td>Lugar de Envio</td>
                            <td><input type="text" name="txtLug" value=""/></td>
                            <td colspan="2"> <input type="submit" value="Agregar" name="accion" /> </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
