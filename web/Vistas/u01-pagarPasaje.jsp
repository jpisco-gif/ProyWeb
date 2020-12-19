<%
    int cuenta_id = 0;
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
    } catch (Exception e) {
        response.sendRedirect("U04-login.jsp");
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Css/newcss.css">
    </head>
    <body>
        <h3 class="msj-pagarPasaje">Ingrese los datos de su tarjeta</h3>
        <section class="form-pagarPasaje">
            <form action="../U01_Controlador" method="post">
                <table>
                    <tr>
                        <td>Nro. de tarjeta</td>
                        <td>
                            <input type='text' placeholder="XXXX-XXXX-XXXX-XXXX">
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha de expiración</td>
                        <td>
                            <input type='text' placeholder='MM-AA'>
                        </td>
                    </tr>
                    <tr>
                        <td>CCV</td>
                        <td>
                            <input type='text' placeholder='###'>
                        </td>
                    </tr>
                    <tr class="submit-pagarPasaje">
                    <input type="hidden" name="cuenta_id" value="<%=cuenta_id%>">
                    <input type="hidden" name="accion" value="pagar-pasajes">
                    <td colspan="2"><input type="submit" name="submit" value="Confirmar pago"></td>
                    </tr>

                </table>

            </form>
        </section>
    </body>
</html>
