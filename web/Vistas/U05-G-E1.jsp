
<%@page import="Modelo.U05_Admi"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificacion de Registros</title>
    </head>
    <body>
       <% 
       U05_AdmiDao dao=new U05_AdmiDao();
       int cuenta_id=Integer.parseInt((String)request.getAttribute("cuenta_idper"));
       U05_Admi p=(U05_Admi)dao.list(cuenta_id);
       %>
       <h1>Modificar Cuenta de Administrador</h1>
       <form action="U05_Controlador_Admi">
           <table border="1">
                    <tbody>
                        <tr>
                            <td>Usuario:</td>
                            <td> <input type="text" name="txtUsuario" value="<%=p.getUsuario()%>" /> </td>
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td> <input type="text" name="txtContrasena" value="<%=p.getContraseña()%>" /> 
                                <input type="hidden" name="txtCuenta_id" value="<%=p.getCuenta_id()%>" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td> <input type="text" name="txtEmail" value="<%=p.getEmail()%>" /> </td>
                        </tr>
                        
                        
                        <tr>
                            <td colspan="2"> <input type="submit" value="Actualizar" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>
                            <a href="U05_Controlador_Admi?accion=listar">Regresar</a>
       </form>
        
    </body>
</html>
