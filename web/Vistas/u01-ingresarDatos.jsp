<%
    int itinerario_id = Integer.parseInt(request.getParameter("val2"));
    int nom_asiento = Integer.parseInt(request.getParameter("val"));
    double precio = Double.parseDouble(request.getParameter("val3"));
    int cuenta_id = Integer.parseInt(request.getParameter("val4")); 

    int rol_id = 0;
    try {
            rol_id = (Integer) session.getAttribute("rol_id");
        } catch (Exception e) {
            rol_id = 0;
        }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <section class="ingresar-datos">
            <p>Ingrese sus datos</p>
            <div class="muestra-form">
                <form action="../U01_Controlador" method="post">
  
                    <table class="formulario">
                        <tr>
                            <td class="izq">Tipo de documento: </td>
                            <td>
                                <select name="tipo-doc" id="tipo-doc" class="select">
                                    <option value="1">DNI</option>
                                    <option value="3">Carnet de extranjería</option>
                                    <option value="2">Pasaporte</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="numdoc">Número de documento: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="numdoc" id="numdoc" placeholder="Ingrese su numero de documento">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="nombre">Nombre: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="nombre" id="nombre" placeholder="Ingrese sus nombres">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="apepat">Apellido paterno: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="apepat" id="apepat" placeholder="Ingrese su apellido paterno">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="apemat">Apellido materno: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="apemat" id="apemat" placeholder="Ingrese su apellido materno">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="edad">Edad: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="edad" id="edad" placeholder="Ingrese su edad">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="sexo">Sexo: </label>
                            </td>
                            <td>
                                <select name="sexo" class="select" id="sexo">
                                    <option value="">Seleccione</option>
                                    <option value="H">Hombre</option>
                                    <option value="M">Mujer</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="telef">Telefono</label>
                            </td>
                            <td>
                                <input type="tel" class="input" placeholder="Ingrese su telefono" name="telef" id="telef">
                            </td>
                        </tr>
                                <input type="hidden" name="itinerario_id" value="<%=itinerario_id%>">
                                <input type="hidden" name="nom_asiento" value="<%=nom_asiento%>">
                                <input type="hidden" name="cuenta_id" value="<%=cuenta_id%>">
                                <input type="hidden" name="precio" value="<%=precio%>">
                                <input type="hidden" name="estado_pago" value="0">
                                <input type="hidden" name="accion" value="guardarPasaje">
                                <input type='hidden' name='rol_id' value='<%=rol_id%>'>
                    </table>
                    <div class="submit">
                        <p>
                            <input type="submit" name="accion" value="Agregar">
                        </p>
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>
