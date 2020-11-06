<%-- 
    Document   : u01-consultarRuta
    Created on : 04-nov-2020, 12:02:19
    Author     : Manuel
--%>


<%@page import="java.util.List"%>
<%@page import="Modelo.U01_Ruta"%>
<%@page import="java.util.Iterator"%>
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="ingresar-datos">
            <h3>Ingrese sus datos</h3> 
            <div class="muestra-form">
                <form method="post" action="u01-mostrarRutas.jsp">
                    <div>
                        <label>Origen</label>
                        <select name="origen">
                            <option value="">Seleccione</option>
                            <option value="1">Lima</option>  
                            <option value="2">Ica</option> 
                            <option value="3">Arequipa</option> 
                            <option value="4">Cusco</option> 
                            <option value="5">Huancayo</option>
                        </select>
                    </div>
                    <div>
                        <label>Destino</label>
                        <select name="destino">
                            <option value="">Seleccione</option>
                            <option value="1">Lima</option>  
                            <option value="2">Ica</option> 
                            <option value="3">Arequipa</option> 
                            <option value="4">Cusco</option> 
                            <option value="5">Huancayo</option> 
                        </select>
                    </div>
                    <div>
                        <label>Fecha</label>
                        <input type="date" name="fecha">
                    </div>

                    <div class="submit">
                        <input type="hidden" name="accion" value="consultar-rutas">
                        <input type="submit" name="submit" value="Buscar">
                    </div>
                </form>
            </div>
        </section>
        
    </body>
</html>
