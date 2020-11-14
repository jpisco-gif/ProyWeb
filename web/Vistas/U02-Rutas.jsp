<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Administración</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='../Css/newcss.css'>
        
</head>
<body>

        <!--Contenedoressss-->
          <div class="contenedor informe">
            <!--headermain-->
              <div class="headermain">
                <!--Header-->
                  <header>
                      <a href="../index.jsp" class="logo"><img src="file:///C:/Users/Benjamin/Desktop/logo2.svg" alt="" /></a>
                      <!--logo-->
                  </header>
                    
                
                  <!--Nav-->
                    <nav class="menu-lateral">
                      <ul>
                        <li class="reporte">
                          <h4><strong> Reportes</strong></h4>
                        </li>
                        <li class="usuarios"><a href="U02-usuario.html">Usuarios</a></li>
                        <li class="viajes "><a href="U02-viajes.html">Viajes</a></li>
                        <li class="encomiendas"><a href="U02_Controlador?accion=listar">Encomiendas</a></li>
                        <li class="perfil"><a href="U02-perfil.html">Perfil</a></li>
                      </ul>
                    </nav><!--  
                        Main
                --><main>     
                      <section class="reporte-grafico">
                        <p>Viajes</p>
                        <br></br>
                        <iframe name="detalle" id="detalle" src="U02-Listar.jsp" width="620" height="400" frameborder="0" scrolling="yes"></iframe> 
                        
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


