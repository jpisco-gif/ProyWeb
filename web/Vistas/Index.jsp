<%-- 
    Document   : Index
    Created on : 29-nov-2020, 19:27:18
    Author     : 51954
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    
       
    

   <head class="head">
        <meta charset="utf-8">
        <title>Llama bus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="../Css/animate.css" rel="stylesheet">
        <link href="../Css/bootstrap-responsive.css" rel="stylesheet">
        <link href="../font/stylesheet.css" rel="stylesheet">
        <link href="../Css/bootstrap.css" rel="stylesheet">
        <link href="../Css/flexslider.css" rel="stylesheet">
        <link rel="stylesheet" media="screen" href="../Css/sequencejs.css">
        <link href="../Css/style.css" rel="stylesheet">
        <link href="../color/default.css" rel="stylesheet">

        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="../ico/favicon.ico">

    </head>

    <body class="body">
        
        <jsp:include page="U02-Menu.jsp"></jsp:include>



        <!-- section featured -->
        <section id="featured">

            <!-- sequence slider -->
            <div id="sequence-theme">
                <img class="prev" src="../img/bt-prev.png" alt="Previous">
                <img class="next" src="../img/bt-next.png" alt="Next">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            <div id="sequence">
                                <ul>
                                    <li class="animate-in">
                                        <div class="info letter-container">
                                            <h2 class="fade">MAS SALIDAS DIARIAS</h2>
                                        </div>
                                        <h4 class="subtitle">HUANCAYO/ICA/LIMA</h4>
                                        <div class="bottomup">
                                            <img src="../img/slider/parallax/cuzco.jpg" alt="">
                                        </div>
                                    </li>
                                    <li class="animate-in">
                                        <div class="info letter-container">
                                            <h2 class="fade">DESTINOS MAS RAPIDOS</h2>
                                        </div>
                                        <h4 class="subtitle">VIAJES PARA LIMA, AREQUIPA E ICA HASTA S/.29.00</h4>
                                        <div class="lefttop">
                                            <img src="../img/slider/parallax/Ancash.jpg" alt="">
                                        </div>
                                    </li>
                                    <li class="animate-in">
                                        <div class="info letter-container">
                                            <h2 class="fade">CUMPLIMOS CON LOS PROTOCOLOS</h2>
                                        </div>
                                        <h4 class="subtitle">PARA QUE PUEDAS VIAJAR SEGURO Y TRANQUILO .</h4>
                                        <div class="righttop">
                                            <img src="../img/slider/parallax/bio.png" alt="">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end sequence slider -->
        </section>
        <!-- end featured -->

        <!-- Section about -->
        <section id="about" class="section">
            <div class="gray-shadow">
            </div>
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="headline">
                            <h3><span>ACERCA DE NUESTRA EMPRESA</span></h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="section-intro">
                            <p>
                                Somos una empresa que lleva 30 años brindando servicios de calidad a través de modernas flotas de buses para satisfacer a nuestros clientes. Además brindamos servicios con los estandares mas altos de seguridad y un servicio a bordo de primera, tenemos como finalidad dar un viaje a nuestros clientes con nuestros altos protocolos de seguridad.
                            </p>
                                <div class="righttop">
                                    <img src="../img/slider/parallax/bio.png" alt="">
                                </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </section>
        <!-- end section about -->

        <!-- section services -->
        <section id="services" class="section parallax">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="headline">
                            <h3><span>SERVICIOS QUE BRINDAMOS</span></h3>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="section-intro">
                            <p>
                                Que esperas para poder comprar tus pasajes normales o en VIP. Dale al boton de <br>COMPRAR PASAJES</br> No esperes para poder realizar tu viaje de manera segura 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="span3">
                        <div class="well box aligncenter">
                            <h3> !No esperes!</h3>
                            <p>
                                Lo que Necesitas saber para viajar con toda seguridad.
                            </p>
                        </div>
                    </div>
                    <div class="span3">
                        <div class="well box aligncenter">
                            <h3>!Excelente!</h3>
                            <p>
                                La excelencia de la calidad con todos los protocolos
                            </p>
                        </div>
                    </div>
                    <div class="span3">
                        <div class="well box aligncenter">
                            <h3>!Aprovecha!</h3>
                            <p>
                               Descarga la app muy pronto y con descuentos
                            </p>
                        </div>
                    </div>
                    <div class="span3">
                        <div class="well box aligncenter">
                            <h3>¡Cuidemonos!</h3>
                            <p>
                                Tu salud es nuestra prioridad para que disfrutes tus viajes
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end section services -->


        <!-- section contact -->
        <section id="contact" class="section">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="headline">
                            <h3><span>CONTACTANOS</span></h3>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="section-intro">
                            <p>
                                Si tienes alguna duda sobre el viaje, puedes contactarnos. Llene el formulario por favor para poner su sugerencia.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="span6">
                        <h4>Contactanos </h4>

                        <!-- start contact form -->
                        <div id="sendmessage">Your message has been sent. Thank you!</div>
                        <div id="errormessage"></div>

                        <form action="" method="post" role="form" class="contactForm">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>

                            <ul class="contact-list">
                                <li class="form-group">
                                    <input type="text" name="name" class="form_input" id="name" placeholder="TUS NOMBRES COMPLETOS" data-rule="minlen:4" data-msg="Por favor escriba su nombre">
                                    <div class="validation"></div>
                                <li class="form-group">
                                    <input type="email" class="form_input" name="email" id="email" placeholder="TU CORREO" data-rule="email" data-msg="Por favor escriba su email">
                                    <div class="validation"></div>
                                </li>
                                <li class="form-group">
                                    <input type="text" class="form_input" name="subject" id="subject" placeholder="ASUNTOS" data-rule="minlen:4" data-msg="Por favor escriba su asunto">
                                    <div class="validation"></div>
                                </li>

                                <li class="form-group">
                                    <textarea class="form_textarea" name="message" rows="12" data-rule="required" data-msg="POR FAVOR ESCRIBANOS SU SUGERENCIA" placeholder="MENSAJE"></textarea>
                                    <div class="validation"></div>
                                </li>
                                <li class="last">
                                    <button class="btn btn-large btn-theme" type="submit" id="send">Enviar Mensaje</button>
                                </li>
                            </ul>
                        </form>
                        <!-- end contact form -->

                    </div>
                    <div class="span6">
                        <h4> PARA MAS INFORMACION</h4>
                        
                        <div class="dotted_line">
                        </div>
                        <p>
                            <span><i class="icon-phone"></i> <strong>CELULAR:</strong> 999 999 999 </span>
                        </p>
                        <p>
                            <span><i class="icon-envelope-alt"></i> <strong>EMAIL:</strong> LlamaBus@gmail.com</span>
                        </p>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- end section contact -->


        <footer>
            <div class="verybottom">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            <div class="aligncenter">
                                <div class="logo">
                                    <a class="brand" href="Index.jsp">
                                        <img src="../img/logo2.png" alt="">
                                    </a>
                                </div>
                                <p>DERECHOS DE AUTOR DE LLAMA BUS</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Javascript Library Files -->
        <script src="../js/jquery.min.js"></script>
        <script src="../js/jquery.easing.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/jquery.lettering.js"></script>
        <script src="../js/parallax/jquery.parallax-1.1.3.js"></script>
        <script src="../js/nagging-menu.js"></script>
        <script src="../js/sequence.jquery-min.js"></script>
        <script src="../js/sequencejs-options.sliding-horizontal-parallax.js"></script>
        <script src="../js/portfolio/jquery.quicksand.js"></script>
        <script src="../js/portfolio/setting.js"></script>
        <script src="../js/jquery.scrollTo.js"></script>
        <script src="../js/jquery.nav.js"></script>
        <script src="../js/modernizr.custom.js"></script>
        <script src="../js/prettyPhoto/jquery.prettyPhoto.js"></script>
        <script src="../js/prettyPhoto/setting.js"></script>
        <script src="../js/jquery.flexslider.js"></script>

        <!-- Contact Form JavaScript File -->
        <script src="../contactform/contactform.js"></script>

        <!-- Template Custom Javascript File -->
        <script src="../js/custom.js"></script>

    </body>

</html>
