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
        <link href="../Css/pop.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
       
        <script type="text/javascript" src="../js/jquery.js"></script>
        <title>Gerencia</title>
    </head>
    <body class="admin" style="overflow: visible">
         <jsp:include page="U05-Cabecera.jsp"></jsp:include>
        <div id="contenido">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            
                            
                            <section class="reporte-grafico">
                        

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"></div>
                            <div class="finanzas_parrafo">
                                
                             <div>
                                        <h1 class="w3-animate-right" >Cuentas de Administradores</h1><hr>
                                        <!--<a href="U05_Controlador_Admi?accion=add">Agregar Nuevo></a> <a href="javascript:window.print()">Imprimir</a>-->
                                        <a href="#" onclick="agregarNuevo()"><input type="button" value="Agregar nuevo"></a> 
                                        <a href="U05-G-L.jsp"><input type="button" value="Imprimir"></a>
                                        <button id="myBtn">Ayuda</button>
                                        <br>
                                        <br>
                                        <table class="w3-card-4 w3-centered" id="customers" border="1">
                                            <thead>

                                                <tr>
                                                    
                                                    <th>usuario</th>
                                                    <th>contraseña</th>
                                                    <th>email</th>

                                                    
                                                    <th>nombres</th>
                                                    <th>apellido_paterno</th>
                                                    <th>apellido_materno</th>
                                                    <th>sexo</th>
                                                    <th>telefono</th>
                                                    <th>edad</th>
                                                    
                                                    <th>cod_documento</th>
                                                    <th>Modificar</th>
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
                                                    
                                                    <td><%=per.getUsuario()%></td>
                                                    <td><%=per.getContraseña()%></td>
                                                    <td><%=per.getEmail()%></td>

                                                    
                                                    <td><%=per.getNombres()%></td>
                                                    <td><%=per.getApellido_paterno()%></td>
                                                    <td><%=per.getApellido_materno()%></td>
                                                    <td><%=per.getSexo()%></td>
                                                    <td><%=per.getTelefono()%></td>
                                                    <td><%=per.getEdad()%></td>
                                                    
                                                    <td><%=per.getCod_documento()%></td>
                                                    <td>
                                                        
                                                        
                                                        <div class="dropdown">
                                                        <a class="w3-button w3-tiny w3-circle w3-green">+</a>
                                                        <div class="dropdown-content">
                                                            <a href="#" onclick="editarCuenta(<%=per.getCuenta_id()%>)"><input type="button" value="cuenta"></a>
                                                            <a href="#" onclick="editarInfo(<%=per.getCuenta_id()%>)"><input type="button" value="informacion"></a>
                                                        </div>
                                                        </div>
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
            
            <div class="dropdown-divider"></div>
        

            
  <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2></h2>
    </div>
    <div class="modal-body">
      <h1>Ayuda</h1>
      <p>En esta pagina se podran realizar las siguientes acciones:</p>
        <ul>
            <li>Crear nuevas cuentas de administrador con el boton Agregar nuevo</li>
            <li>Editar la cuenta con el boton modificar</li>
            <li>Editar los datos personales con el boton modificar</li>
        </ul>  
        </div>
    <div class="modal-footer">
      <h3><br></h3>
    </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>         
            
            
    
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
    </body>
</html>

