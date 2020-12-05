<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int cuenta_id = 0;
    int log_id = 0;
    String usuario = "";
    try {
        cuenta_id = (Integer) session.getAttribute("cuenta_id");
        log_id = (Integer) session.getAttribute("log_id");
        usuario = String.valueOf(session.getAttribute("usuario"));
    } catch (Exception e) {
        cuenta_id = 0;
        log_id = 0;
        usuario = null;
    }


%>
<!doctype html>
<html lang="en">

    <head class="head">
        <meta charset="utf-8">
        <title>Llama bus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        


    </head>

    <body class="body">
        <header>
            <!-- start tops -->
  
            <div id="topnav" class="navbar navbar-fixed-top default">
                <div class="navbar-inner">
                    <div class="container">
                        <div class="logo">
                            <a class="brand" href="Index.jsp"><img src="../img/logo2.png" alt=""></a>
                        </div>
                        <div class="navigation">
                            <nav>
                                <ul class="nav pull-right">
                                    <li class="current"><a href="Index.jsp">Inicio</a></li>
                                    <li><a href="#about">Nosotros</a></li>
                                    <li><a href="#services">Servicios</a></li>
                                    <li><a href="u01-comprarPasaje.jsp">Compra de Pasajes</a></li>
                                    <li><a href="#contact">Contactos</a></li>
                                    <% if(usuario == null){
                                        %>
                                        <li><a href="U04-login.jsp">Login</a></li>
                                        <%
                                    }else{
                                        %>
                                        <li class="dropdown">Bienvenido, <%=usuario%></li>
                                        <li><a href="../U01_Controlador?accion=logout&cuenta_id=<%=cuenta_id%>&log_id=<%=log_id%>">Cerrar sesion</a></li>
                                        <%
                                            }
                                        %>
                                      
                                </ul>
                            </nav>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- end tops -->
        </header>




    </body>

</html>