<%
    int usuario_id = Integer.parseInt(request.getParameter("val"));
    String nombres = request.getParameter("val2");
    String apepat = request.getParameter("val3");
    String apemat = request.getParameter("val4");
    String sexo = request.getParameter("val5");
    int telefono = Integer.parseInt(request.getParameter("val6"));
    int edad = Integer.parseInt(request.getParameter("val7"));
    int numdoc = Integer.parseInt(request.getParameter("val8"));
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Css/newcss.css">
        <script src="../js/U01-venta-validar.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <section class="ingresar-datos">
            <h3 class="msj-ingresarDatos">Ingrese sus datos</h3>
            <div class="muestra-form">
                <form action="../U01_Controlador" method="post" onsubmit="return validar();">
                    <table class="formulario">
                        <tr>
                            <td class="izq">Tipo de documento: </td>
                            <td>
                                <select name="tipo-doc" id="tipo-doc" class="select">
                                    <option value="">Seleccione</option>
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
                                <input type="text" class="input" name="numdoc" id="numdoc" value='<%=numdoc%>'>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="nombre">Nombre: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="nombre" id="nombre" value='<%=nombres%>'>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="apepat">Apellido paterno: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="apepat" id="apepat" value='<%=apepat%>'>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="apemat">Apellido materno: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="apemat" id="apemat" value="<%=apemat%>">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="edad">Edad: </label>
                            </td>
                            <td>
                                <input type="text" class="input" name="edad" id="edad" value="<%=edad%>">
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
                                <input type="tel" class="input" value="<%=telefono%>" name="telef" id="telef">
                                <input type="hidden" name="accion" value="editarDatos">
                                <input type="hidden" name="usuario_id" value="<%=usuario_id%>">
                            </td>
                        </tr>                       
                    </table>
                    <div class="submit">
                        <p>
                            <input type="submit" name="accion" value="Aceptar">
                        </p>
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>
