<%
    int id = Integer.parseInt(request.getParameter("id"));
%>

<%@page import="Modelo.U03A_Encomienda"%>
<%@page import="ModeloDao.U03A_EncomiendaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@1,300;1,700&display=swap" rel="stylesheet">
        <link href="../Css/newcss.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body onload="window.print()">
        <%
            HttpSession sesion = request.getSession();
            U03A_EncomiendaDao end = new U03A_EncomiendaDao();

            System.out.println(id);
            U03A_Encomienda en = (U03A_Encomienda) end.list(id);
        %>
        <div id="content">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <a href="U03A-listarEn.jsp">Regresar</a> 

                            <table border="1">
                                <tbody>
                                    <tr>
                                        <td width="100"><a href="U05-G-index.jsp">  <img src="../Imagenes/logo2.svg" width="250"></a><br> Empresa de transporte interprovincial Llama Bus</td>                        
                                        <td width="100"></td>
                                        <td>BOLETA DE VENTA ELECTRONICA<br>
                                            RUC: 12345678958<br>                            
                                        </td>                        
                                    </tr><br>
                                <br>
                                <br>
                                <tr>
                                    
                                </tr>
                                <tr>
                                    <td>Nombres:</td>
                                    <td width="100"><%=en.getEnvia_nom()%></td>
                                    <td>Nombres:</td>
                                    <td><%=en.getRecoge_nom()%></td>
                                </tr>
                                <tr>
                                    <td>Apellidos:</td>
                                    <td><%=en.getRecoge_nom()%></td>
                                    <td>Apellidos:</td>
                                    <td><%=en.getRecoge_ape()%></td>
                                </tr>
                                <tr>
                                    <td>DNI:</td>
                                    <td><%=en.getEnvia_dni()%></td>
                                    <td>DNI:</td>
                                    <td><%=en.getRecoge_dni()%></td>
                                </tr>

                                <tr>
                                    <td>Lugar de Envio:</td>
                                    <td><%=en.getCiudad() %></td>
                                <input type="hidden" name="txtId" value="<%=en.getId()%>"/>
                                </tr>
                                </tbody>                        
                            </table>
                        </div>
                    </div>
                </div>

            </section>
        </div>
        <div class="dropdown-divider"></div>
    </div>
</body>
</html>
