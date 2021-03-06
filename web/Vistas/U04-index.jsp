<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U01_Ruta"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="ModeloDao.U04_CuentaDao"%>


<!DOCTYPE html>
<html lang="es">
    <head> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimum-scale=1.0" >
        <link rel="stylesheet" href="../Css/newcss.css">
        <title>Llama Bus</title>
        <link href="https://file.myfontastic.com/t5tNwfwUapz4yDzK3B6sfe/icons.css" rel="stylesheet">
    </head>
    <body>
        <header class="header">
            <div class="contenedor">
                <h1 class="logo">Llama bus</h1>
                <span class="icon-menu" id="btn-menu"></span>
                <nav class="nav" id="nav">
                    <ul class="menu">
                        <li class="menu__item"><a class="menu__link elect" href="#">Inicio</a></li>
                        <li class="menu__item"><a class="menu__link" href="U04-Servicio.jsp">servicios</a></li>
                        <li class="menu__item"><a class="menu__link" href="U04-Nosotros.jsp">Nosotros</a></li>
                        <li class="menu__item"><a class="menu__link" href="U04-AtencioAlCliente.jsp">Atencion al cliente</a></li>
                        <li class="menu__item"><a class="menu__link" href="u01-comprarPasaje.jsp">compra de pasaje</a></li>
                            <%

                                HttpSession sesion = request.getSession();
                                String usuario;
                                
                                if (sesion.getAttribute("usuario") != null) {
                                    usuario = sesion.getAttribute("usuario").toString();
                                    
                                   out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link' href='../Vistas/u04-logout.jsp'>Logout</a>");
                                    out.println("</li>"); 
                                    out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link'>");
                                    out.println(usuario);
                                    out.println("</a>");
                                    out.println("</li>"); 

                                } else {
                                    out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link' href='../Vistas/U04-login.jsp'>Login</a>");
                                    out.println("</li>");

                                }
                                {

                                }
                            %> 


                    </ul>
                </nav>
            </div>
        </header>
                            
        <div class="banner">
            <ul>
                <li><img src="../Imagenes/arequipa.jpg" alt="" class="banner__img"></li>
                <li><img src="../Imagenes/Ancash.jpg" alt="" class="banner__img"></li>
                <li><img src="../Imagenes/ica.jpg" alt="" class="banner__img"></li>
                <li><img src="../Imagenes/cuzco.jpg" alt="" class="banner__img"></li>
                <li><img src="../Imagenes/huancayo.jpg" alt="" class="banner__img"></li>
            </ul>

            <%--<div class="contenedor">
                <h2 class="banner__titulo">La mejor seguridad de buses del Peru</h2>
                <p class="banner__txt">Bioseguridad y protocolo</p>
                <form action="../U01_Controlador" method="post">
                    <label> Origen: </label>   
                    <select name="origen">
                        <option value="">Seleccione</option>
                        <option value="1">Lima</option> 
                        <option value="2">Ucayali</option> 
                        <option value="3">Huancayo</option>
                        <option value="10">Junin</option> 
                        <option value="11">Ica</option> 
                        <option value="12">Cuzco</option> 
                        </p>
                    </select> 
                    <label> Destino: </label>
                    <select name="destino">
                        <option value="">Seleccione</option>
                        <option value="1">Lima</option> 
                        <option value="2">Ucayali</option> 
                        <option value="3">Huancayo</option>
                        <option value="10">Junin</option> 
                        <option value="11">Ica</option> 
                        <option value="12">Cuzco</option> 
                        </p>
                    </select> 
                    <label> fecha: </label>
                    <input class="xd"type="date" name="fecha" value="2020-10-30" />
                    <input type="hidden" name="accion" value="consultar-rutas"
                    <input type="submit" value="Buscar"/>


                </form>
            </div>   --%>
            
        </div>


    </div>  
    <main class="main">
        <div class="contenedor">
            <section class="info">
                <article class="info__columna">
                    <img src="../Imagenes/carro.png" alt="" class="info__img">
                    <h2 class="info__titulo">!No esperes! </h2>
                    <p class="info__txt">Lo que Necesitas saber para viajar con toda seguridad.</p>
                    <p class="infor__txt">!Informate Aqui!</p>
                </article>
                <article class="info__columna">
                    <img src="../Imagenes/reconocer.png" alt="" class="info__img">
                    <h2 class="info__titulo">!Excelente!</h2>
                    <p class="info__txt">La excelencia de la calidad con todos los protocolos</p>
                    <p class="infor__txt">!CLIC Aqui!</p>
                </article>
                <article class="info__columna">
                    <img src="../Imagenes/compra.png" alt="" class="info__img">
                    <h2 class="info__titulo">!Aprovecha!</h2>
                    <p class="info__txt">Descarga la app muy pronto y con descuentos</p>
                    <p class="infor__txt">!Conoce mas Aqui!</p>
                </article>
            </section>
            <div class="muestra-form">
                <%
                    U01_RutasDao dao3 = new U01_RutasDao();
                    List<U01_Ruta> list3 = dao3.terminales();
                    
                %>
                <form method="post" action="../U01_Controlador" class="labels-formulario">
                    <div>
                        <label>Origen</label>
                        <select name="origen">
                            <option value="">Seleccione</option>
                            <%
                                Iterator<U01_Ruta> iter_origen = list3.iterator();
                                U01_Ruta ruta_origen = null;
                                while (iter_origen.hasNext()) {
                                    ruta_origen = iter_origen.next();
                            %>

                            <option value="<%=ruta_origen.getId_origen()%>"><%=ruta_origen.getOrigen()%></option>  
                            <%}%>
                        </select>
                    </div>
                    <div>
                        <label>Destino</label>
                        <select name="destino">
                            <option value="">Seleccione</option>
                            <%
                                Iterator<U01_Ruta> iter_destino = list3.iterator();
                                U01_Ruta ruta_destino = null;
                                while (iter_destino.hasNext()) {
                                    ruta_destino = iter_destino.next();
                            %>

                            <option value="<%=ruta_destino.getId_origen()%>"><%=ruta_destino.getOrigen()%></option>  
                            <%}%>
                        </select>
                    </div>
                    <div>
                        <label>Fecha</label>
                        <input type="date" name="fecha">
                    </div>

                    <div class="">
                        <input type="hidden" name="accion" value="consultar-rutas">
                        <input type="submit" name="submit" value="Buscar rutas">
                    </div>
                </form>
            </div>
            <section class="regiones">
                <h2 class="section__titulo">Nuestros adelantos</h2>
                <div class="regiones__columna">
                    <img src="../Imagenes/pagos.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">ELIGE TU MEDIO DE PAGO</h3>
                        <p class="regiones__txt">Paga con tu tarjeta de debito, credito o paypal, tambien paga sin tarjetas, usando nuestro codigo de deposito en efecto</p>
                    </div>
                </div>
                <div class="regiones__columna">
                    <img src="../Imagenes/descuentos.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">ENCUENTRA OFERTAS INCREIBLES</h3>
                        <p class="regiones__txt">Compra Pasajes al mejor precio con descuentos increibles.</p>
                    </div>
                </div>
                <div class="regiones__columna">
                    <img src="../Imagenes/protocolo.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">MUCHAS OPCIONES PARA VIAJAR EN BUS</h3>
                        <p class="regiones__txt">Escoge nuestra central de viajes con el protocolo de seguridad.</p>
                    </div>
                </div>
                <div class="regiones__columna">
                    <img src="../Imagenes/viajes.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">Acerca de</h3>
                        <p class="regiones__txt">Informamos sobre las indicacion y normas de nuestra aplicacion.</p>
                    </div>
                </div>
            </section>
        </div>
    </main>
    <footer class="footer">
        <div class="social">
            <a href="#" class="icon-facebook"></a>
            <a href="#" class="icon-twitter"></a>
            <a href="#" class="icon-gplus"></a>
            <a href="#" class="icon-vine"></a>
        </div>
        <p class="copy">&copy; LLama bus 2020 - Todos los derechos reservados</p>
    </footer>
    <script src="../../../js/menu.js"></script>
</body>
</html>
