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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="../js/jquery.js"></script>
        <script src="../js/U05-G-A2-validar.js"></script>
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
            <h1 class="w3-animate-right">Agregar Administrador</h1><hr><br>
            <form action="../U05_Controlador_Admi" onsubmit="return validar();">
                <table class="w3-card-4 w3-centered" id="customers" border="1">
                    <tbody>
                        
                        
                        
                        <tr>
                            <td>Nombres:</td>
                            <td> <input type="text" id="txtNombres" name="txtNombres" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Apellido Paterno:</td>
                            <td> <input type="text" id="txtApellido_paterno" name="txtApellido_paterno" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Apellido Materno:</td>
                            <td> <input type="text" id="txtApellido_materno" name="txtApellido_materno" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Sexo:</td>
                           
                            
                            <td> <select id="txtSexo" name="txtSexo" >
                                <option>M</option>
                                <option>F</option>
                            </select> </td>
                        </tr>
                        <tr>
                            <td>Telefono:</td>
                            <td> <input type="text" id="txtTelefono" name="txtTelefono" value="" /> </td>
                        </tr>
                       <tr>
                            <td>Edad:</td>
                            <td> <input type="text" id="txtEdad" name="txtEdad" value="" /> </td>
                        </tr>
                        <tr>
                            <td>DNI :</td>
                            <td> <input type="text" id="txtCod_documento" name="txtCod_documento" value="" /> </td>
                        </tr>
                        
                        
                        
                        
                        <tr>
                            <td colspan="2"> <input type="submit" value="Agregar2" name="accion" /> </td>
                        </tr>
                        
                    </tbody>
                </table>

                
                
                
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
        

  
        
    </body>
    
</html>