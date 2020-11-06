<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <div>
            <h1>Agregar Viajes</h1>
            <form action="Controlador">
                <table border="1">
                    <tbody>
                        <tr>
                            <td>RUTA</td>
                            <td> <input type="text" name="txtRuta" value="" /> </td>
                        </tr>
                        <tr>
                            <td>EMBARQUE</td>
                            <td> <input type="text" name="txtEmbarque" value="" /> </td>
                        </tr>
                        <tr>
                            <td>LLEGADA</td>
                            <td> <input type="text" name="txtLlegada" value="" /> </td>
                        </tr>
                        <tr>
                            <td>COSTO DE LA RUTA</td>
                            <td> <input type="text" name="txtCosto" value="" /> </td>
                        </tr>
                        <tr>
                            <td>DURACION DEL VIAJE</td>
                            <td> <input type="text" name="txtduracion" value="" /> </td>
                        </tr>
                        <tr>
                            <td>DESCRIPCION DEL VIAJE</td>
                            <td> <input type="text" name="txtDescripcion" value="" /> </td>
                        </tr>
                        <tr>
                            <td colspan="2"> <input type="submit" value="Agregar" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>

            </form>
        </div>
    </body>
</html>

