<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
        <div id="content">
            <section>
                <div class="container" id="customers">
                    <div class="row">
                        <div class="col-lg-10">
                            <div>
                                <h1>Agregar Viajes</h1>
                                <form action="Controlador">
                                    <table border="1" id="customers">
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
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
    <div class="dropdown-divider"></div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>
</html>

