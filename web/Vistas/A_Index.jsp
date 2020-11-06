<%-- 
    Document   : A_Index
    Created on : 06/11/2020, 12:29:49 AM
    Author     : V330
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Contenedor-->
        <div class="contenedor informe">
            <!--headermain-->
            <div class="headermain">
                <!--Header-->
                <header>
                    <a href="index.html" class="logo"><img src="img/logo2.svg" alt="" /></a>
                    <!--logo-->
                </header>

                <!--Nav-->
                <nav class="menu-lateral">
                    <ul>
                        <li class="reporte">
                            <h4>Reportes</h4>
                        </li>
                        <li class="usuarios"><a href="U03A_Controlador?accion=listar" onclick="" target="cabecera" >Usuarios</a></li>
                        <li class="viajes "><a href="user02-viajes.html">Viajes</a></li>
                        <li class="encomiendas"><a href="U03A-listarEn.jsp" >Encomiendas</a></li>
                        <li class="reporte detallado"><a href="user02-perfil.html">Perfil</a></li>
                    </ul>
                </nav><!--  
                  Main
                --><main>    
                    <section class="reporte-grafico">
                            <h1> HOLA ADMINISTRADOR :D</h1>
                         
                            
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
