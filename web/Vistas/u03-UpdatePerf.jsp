<%-- 
    Document   : u03-UpdatePerf
    Created on : 10/12/2020, 02:44:38 AM
    Author     : Javier Pisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="U03-Cabecera.jsp"></jsp:include>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <form action="#" class="credit-card-div">
                                <div class="panel panel-default" >
                                    <div class="panel-heading">

                                        
                                            <div class="col-md-6 col-sm-3 col-xs-3">
                                                <span class="help-block text-muted small-font" > Usuario</span>
                                                <input type="text" class="form-control" placeholder="MM" />
                                            </div>
                                            <div class="col-md-6 col-sm-3 col-xs-3">
                                                <span class="help-block text-muted small-font" > Contraseña</span>
                                                <input type="text" class="form-control" placeholder="YY" />
                                            </div>
                                            <div class="col-md-6 col-sm-3 col-xs-3">
                                                <span class="help-block text-muted small-font" >  CCV</span>
                                                <input type="text" class="form-control" placeholder="CCV" />
                                            </div>
                                                                                   
                                        
                                        <div class="row">
                                            <div class="col-md-9 pad-adjust">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" checked class="text-muted"> De acuerdo con los cambios realizados
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                                                <input type="submit"  class="btn btn-danger" value="Cancelar" />
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                                                <input type="submit"  class="btn btn-warning " value="Actualizar" />
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
    <div class="dropdown-divider"></div>
</body>
</html>
