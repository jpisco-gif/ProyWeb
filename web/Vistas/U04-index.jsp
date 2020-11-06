<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="ModeloDao.U04_CuentaDao"%>


<!DOCTYPE html>
<html lang="es">
    <head> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimum-scale=1.0" >
        <link rel="stylesheet" href="../../../css/estilo1.css">
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
                                String contraseña;
                                if (sesion.getAttribute("usuario") != null && sesion.getAttribute("contraseña") != null) {
                                    usuario = sesion.getAttribute("usuario").toString();
                                    contraseña = sesion.getAttribute("contraseña").toString();
                                    out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link' href='../Vistas/u04-logout.jsp'>Logout</a>");
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
                <li><img src="../U04-img/arequipa.jpg" alt="" class="banner__img"></li>
                <li><img src="../U04-img/Ancash.jpg" alt="" class="banner__img"></li>
                <li><img src="../U04-img/ica.jpg" alt="" class="banner__img"></li>
                <li><img src="../U04-img/cuzco.jpg" alt="" class="banner__img"></li>
                <li><img src="../U04-img/huancayo.jpg" alt="" class="banner__img"></li>
            </ul>

            <div class="contenedor">
                <h2 class="banner__titulo">La mejor seguridad de buses del Peru</h2>
                <p class="banner__txt">Bioseguridad y protocolo</p>
                <form action="" method="post">
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
            </div>   
        </div>


    </div>  
    <main class="main">
        <div class="contenedor">
            <section class="info">
                <article class="info__columna">
                    <img src="../U04-img/carro.png" alt="" class="info__img">
                    <h2 class="info__titulo">!No esperes! </h2>
                    <p class="info__txt">Lo que Necesitas saber para viajar con toda seguridad.</p>
                    <p class="infor__txt">!Informate Aqui!</p>
                </article>
                <article class="info__columna">
                    <img src="../U04-img/reconocer.png" alt="" class="info__img">
                    <h2 class="info__titulo">!Excelente!</h2>
                    <p class="info__txt">La excelencia de la calidad con todos los protocolos</p>
                    <p class="infor__txt">!CLIC Aqui!</p>
                </article>
                <article class="info__columna">
                    <img src="../U04-img/compra.png" alt="" class="info__img">
                    <h2 class="info__titulo">!Aprovecha!</h2>
                    <p class="info__txt">Descarga la app muy pronto y con descuentos</p>
                    <p class="infor__txt">!Conoce mas Aqui!</p>
                </article>
            </section>
            <section class="regiones">
                <h2 class="section__titulo">Nuestros adelantos</h2>
                <div class="regiones__columna">
                    <img src="../U04-img/pagos.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">ELIGE TU MEDIO DE PAGO</h3>
                        <p class="regiones__txt">Paga con tu tarjeta de debito, credito o paypal, tambien paga sin tarjetas, usando nuestro codigo de deposito en efecto</p>
                    </div>
                </div>
                <div class="regiones__columna">
                    <img src="../U04-img/descuentos.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">ENCUENTRA OFERTAS INCREIBLES</h3>
                        <p class="regiones__txt">Compra Pasajes al mejor precio con descuentos increibles.</p>
                    </div>
                </div>
                <div class="regiones__columna">
                    <img src="../U04-img/protocolo.jpg" alt="" class="regiones__img">
                    <div class="regiones__descripcion">
                        <h3 class="regiones__titulo">MUCHAS OPCIONES PARA VIAJAR EN BUS</h3>
                        <p class="regiones__txt">Escoge nuestra central de viajes con el protocolo de seguridad.</p>
                    </div>
                </div>
                <div class="regiones__columna">
                    <img src="../U04-img/viajes.jpg" alt="" class="regiones__img">
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
