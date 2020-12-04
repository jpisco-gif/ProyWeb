<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">    
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <title>Gerencia</title>
    </head>
    <body class="admin">
         <jsp:include page="U05-Cabecera.jsp"></jsp:include>
        <div id="content">
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
                                
                              
                              <p><a href="../U05_Controlador_Admi?accion=listar" target="iframe_a">Actualizar Lista</a></p>  
                  
                              <iframe src="U05-blanco.jsp" name="iframe_a" height="400px" width="1000px" title="Iframe Example"></iframe>
                  
                            
                                
                                
                              

                              
                            
                            
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
</html>

