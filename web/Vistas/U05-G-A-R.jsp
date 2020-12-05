<%-- 
    Document   : U05-G-A-R
    Created on : 01/12/2020, 10:00:19 AM
    Author     : Anthony Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario para evaluar rendimiento de las terminales</h1>
        <h4>Califique del 1 al 10 los primeros 4 Items </h4>
        <h4>En el Item "incidencias" reporte la cantidad de quejas ,accidentes o incidentes que ha tenido la terminal seleccionada</h4>
        
        <form name="formulario_rendimiento" action="../U05_Controlador_Rendimiento">
            
            <table  id="customers" border="1">
                <thead>
                    <tr>
                        <th>ITEM</th>
                        <th>PUNTUACION</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Terminal</td>
                        <td> <select name="txtTerminal_id">
                                <option>Lima</option>
                                <option>Ica</option>
                                <option>Arequipa</option>
                                <option>Cusco</option>
                                <option>Huancayo</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>Nivel de satiscaccion del usuario</td>
                        <td> <select name="txtSatisfaccion">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>Calidad de atencion al cliente</td>
                        <td> <select name="txtAtencion">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>Nivel de capacitacion del personal</td>
                        <td> <select name="txtCapacitacion">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>Orden y limpieza del terminal</td>
                        <td> <select name="txtLimpieza">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>Numero de incidencias</td>
                        <td> <input type="text" name="txtIncidencias" value="0" /> </td>
                    </tr>
                    <tr>
                        <td colspan="2" > <input type="submit" value="Agregar" name="accion" /> </td>
                    </tr>
                </tbody>
            </table>

            <a href="U05-G-Terminales.jsp"><input type="button" value="Regresar"></a>
            
        </form>
        
    </body>
</html>
