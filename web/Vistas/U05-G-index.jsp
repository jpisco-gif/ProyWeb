<%-- 
    Document   : U05-index
    Created on : 26/10/2020, 12:16:07 AM
    Author     : Anthony Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Index-Gerencia</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../Css/newcss.css">
</head>
<body>
       
        <!--Contenedor-->
          <div class="contenedor informe">
            <!--headermain-->
              <div class="headermain">
                <!--Header-->
                  <header>
                    <a href="index.html" class="logo"><img src="U02.png" alt="" /></a>
                      <!--logo-->
                  </header>
  
                  <!--Nav-->
                    <nav class="menu-lateral">
                      <ul>
                        <li class="reporte">
                          <h4>Gerencia</h4>
                        </li>
                        <li class="Home"><a href="U05-G-index.jsp">Home</a></li>
                        <li class="Reuniones"><a href="U05-G-cuentas.jsp">Cuentas</a></li>
                        
                        
                        <div class="dropdown">
                        <button class="dropbtn">Ventas</button>
                        <div class="dropdown-content">
                        <a href="../U05_Controlador_Ventas_Mes?accion=listar">Venta por Mes</a>
                        <a href="../U05_Controlador_Ventas_Ruta?accion=listar">Venta por Ruta</a>
                        <a href="../U05_Controlador_Ventas_Clase?accion=listar">Venta por clase</a>
                        </div>
                        </div>
                        
                        <li class="Personal"><a href="#">Cerrar sesion</a></li>
                      </ul>
                    </nav><!--  
                      Main
                    --><main>    
                      <section class="reporte-grafico">
                        <div class="head_title">
                          <h1>BIENVENIDO</h1>

                        
                        
                        </div>

                        <div class="bienvenida3">
                            <div class="bienvenida_imagen"><img src="../Imagenes/U05-personal.svg" alt="Personal"></div>
                          <div class="bienvenida_texto">
                            <div class="bienvenida_titulo"><h3>Cuentas</h3><hr></div>
                            <div class="bienvenida_parrafo"><br><br><p>En ese apartado podras ver y crear cuentas de administradores</p></div>
                          </div>
                        </div>

                        <br>
                        <br>
                        <br>

                        <div class="bienvenida">
                            <div class="bienvenida_imagen"><img src="../Imagenes/U05-ruta.png" alt="Llama"></div>
                          <div class="bienvenida_texto">
                            <div class="bienvenida_titulo"><h3>Rutas</h3><hr></div>
                            <div class="bienvenida_parrafo"><br><br><p>En ese apartado podras ver y crear rutas</p></div>
                          </div>
                        </div>

                        <br>
                        <br>
                        <br>

                        

                        <div class="bienvenida2">
                            <div class="bienvenida_imagen"><img src="../Imagenes/U05-finanzas.png" alt="finanzas"></div>
                          <div class="bienvenida_texto">
                            <div class="bienvenida_titulo"><h3>Finanzas</h3><hr></div>
                            <div class="bienvenida_parrafo"><br><br><p>En ese apartado podras ver los estados financieros , las ventas , las ganancias y perdidas</p></div>
                          </div>
                        </div>

                        

                        

                        

                        

                      </section>
                    </main>
                    <div class="stickyfooter">
                     
                    </div>
              </div><!--headermain-->
                <!--Footer-->
              <footer>
    
              </footer>
          </div><!--Contenedor-->
</body>
</html>
