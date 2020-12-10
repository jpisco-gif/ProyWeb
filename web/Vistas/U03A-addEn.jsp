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
        <title>Añadir Encomienda</title>
        <script src="../js/U03-Validacion.js" ></script>
    </head>
    <body>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
        <div id="contenido">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10">
        <h1>Agregar Nueva Encomienda</h1>
        <div>
            <form action="../U03A_Controlador" onsubmit="return validarEn();">
                <table border="1">
                    <tbody>
                        <tr>
                            <td colspan="2">EMISOR </td>                        
                            <td colspan="2">RECEPTOR </td>
                        </tr>
                        <tr>
                            <td>Nombres:</td>
                            <td><input type="text" id="txtNomE" name="txtNomE" value=""/></td>
                            <td>Nombres:</td>
                            <td><input type="text" id="txtNomR" name="txtNomR" value=""/></td>
                        </tr>
                        <tr>
                            <td>Apellidos:</td>
                            <td><input type="text" id="txtApeE" name="txtApeE" value=""/></td>
                            <td>Apellidos:</td>
                            <td><input type="text" id="txtApeR" name="txtApeR" value=""/></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><input type="text" id="txtDniE" name="txtDniE" value=""/></td>
                            <td>DNI:</td>
                            <td><input type="text" id="txtDniR" name="txtDniR" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td>Lugar de Envio</td>
                            <td> <select name="txtLug">
                                    <option value="1">Lima</option>
                                    <option value="2">Ica</option>
                                    <option value="3">Arequipa</option>
                                    <option value="4">Cusco</option>
                                    <option value="5">Huancayo</option>                               
                            </select> </td>
                            <td colspan="2"> <input type="submit" value="Agregar" name="accion" /> </td>
                        </tr>
                    </tbody>
                </table>
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
</html>
