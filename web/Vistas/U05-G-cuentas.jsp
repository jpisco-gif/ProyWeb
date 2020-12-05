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
                        <div class="head_title">
                          <h1>CUENTAS</h1>

                        
                        
                        </div>

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"><h3>Administradores</h3><hr></div>
                            <div class="finanzas_parrafo">
                                
                             <div>
                                        <h1>Administradores</h1>
                                        <!--<a href="U05_Controlador_Admi?accion=add">Agregar Nuevo></a> <a href="javascript:window.print()">Imprimir</a>-->
                                        <a href="#" onclick="agregarNuevo()"><input type="button" value="Agregar nuevo"></a>
                                        <table border="1">
                                            <thead>

                                                <tr>
                                                    <th>cuenta_id</th>
                                                    <th>rol_id</th>
                                                    <th>usuario</th>
                                                    <th>contraseña</th>
                                                    <th>email</th>

                                                    <th>persona_id</th>
                                                    <th>nombres</th>
                                                    <th>apellido_paterno</th>
                                                    <th>apellido_materno</th>
                                                    <th>sexo</th>
                                                    <th>telefono</th>
                                                    <th>edad</th>
                                                    <th>documento_id</th>
                                                    <th>cod_documento</th>
                                                    <th>modificar</th>
                                                </tr>

                                            </thead>
                                            <%
                                                U05_AdmiDao dao = new U05_AdmiDao();
                                                List<U05_Admi> list = dao.listar();
                                                Iterator<U05_Admi> iter = list.iterator();
                                                U05_Admi per = null;
                                                while (iter.hasNext()) {
                                                    per = iter.next();
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=per.getCuenta_id()%></td>
                                                    <td><%=per.getRol_id()%></td>
                                                    <td><%=per.getUsuario()%></td>
                                                    <td><%=per.getContraseña()%></td>
                                                    <td><%=per.getEmail()%></td>

                                                    <td><%=per.getPersona_id()%></td>
                                                    <td><%=per.getNombres()%></td>
                                                    <td><%=per.getApellido_paterno()%></td>
                                                    <td><%=per.getApellido_materno()%></td>
                                                    <td><%=per.getSexo()%></td>
                                                    <td><%=per.getTelefono()%></td>
                                                    <td><%=per.getEdad()%></td>
                                                    <td><%=per.getDocumento_id()%></td>
                                                    <td><%=per.getCod_documento()%></td>
                                                    <td>
                                                        <!--<a href="U05_Controlador_Admi?accion=editar&cuenta_id=<%=per.getCuenta_id()%>">Editar Cuenta"</a>
                                                        <a href="U05_Controlador_Admi?accion=editar2&cuenta_id=<%=per.getCuenta_id()%>">Editar Informacion personal"</a>-->
                                                        <a href="#" onclick="editarCuenta(<%=per.getCuenta_id()%>)"><input type="button" value="Editar cuenta"></a>
                                                        <a href="#" onclick="editarInfo(<%=per.getCuenta_id()%>)"><input type="button" value="Editar informacion personal"></a>
                                                        
                                                    </td>
                                                </tr>
                                                <% }%>
                                            </tbody>
                                        </table>
                                    </div>    

                            </div>
                          </div>
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

        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        
    </body>
    <script>
          function editarCuenta(val) {
            $.post("U05-G-E1.jsp", {val: val})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }
        
        function editarInfo(val) {
            $.post("U05-G-E2.jsp", {val: val})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }
        function agregarNuevo() {
            $.post("U05-G-A1.jsp", {})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }
    </script>
</html>

