<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U05_Admi"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U05_AdmiDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="../js/jquery.js"></script>
        <title>Gerencia</title>
    </head>
    <body class="admin">
         <jsp:include page="U05-Cabecera.jsp"></jsp:include>
        <div id="contenido">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            
                            
                            <section class="reporte-grafico">
                        
                                
                                
                                <div>
            <h1>Agregar Administrador</h1>
            <form action="../U05_Controlador_Admi">
                <table id="customers" border="1">
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
                                
                                
                      </section>
                            
                            
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