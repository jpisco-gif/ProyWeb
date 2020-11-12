<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.U01_Asiento"%>
<%@page import="ModeloDao.U01_PasajeroDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%
    int itinerario_id = Integer.parseInt(request.getParameter("val"));
    double precio = Double.parseDouble(request.getParameter("val2"));
    int cuenta_id = Integer.parseInt(request.getParameter("val3"));
    //String[] estado=null;
    List<String> estado = new ArrayList<String>();
    int contador = 0;
    U01_PasajeroDao dao = new U01_PasajeroDao();
    List<U01_Asiento> list = dao.consultarDisponibilidad(itinerario_id);//aqui van los atributos
    
    Iterator<U01_Asiento> iter2 = list.iterator();
                    U01_Asiento comp = null;
                    while (iter2.hasNext()) {
                        comp = iter2.next();
                        if(comp.getDisponibilidad()==1){
                            estado.add("ocupado");
                        }
                        else if(comp.getDisponibilidad()==0){
                            estado.add("libre");
                        }
                        contador++;
                    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    <body>
        <section class="ver-asientos">
            <h3>Seleccione su asiento</h3><br>            
            <div class="bus">
                <div class="grupo">
                    <p class="piso">Primer piso</p>
                    <div class="asientos"> 
                        <div class="fila">        
                            
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(1, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(0).getDisponibilidad()%>)"><p class="<%=estado.get(0)%>">1</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(2, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(1).getDisponibilidad()%>)"><p class="<%=estado.get(1)%>">2</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(3, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(2).getDisponibilidad()%>)"><p class="<%=estado.get(2)%>">3</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(4, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(3).getDisponibilidad()%>)"><p class="<%=estado.get(3)%>">4</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(5, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(4).getDisponibilidad()%>)"><p class="<%=estado.get(4)%>">5</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(6, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(5).getDisponibilidad()%>)"><p class="<%=estado.get(5)%>">6</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(7, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(6).getDisponibilidad()%>)"><p class="<%=estado.get(6)%>">7</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(8, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(7).getDisponibilidad()%>)"><p class="<%=estado.get(7)%>">8</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(9, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(8).getDisponibilidad()%>)"><p class="<%=estado.get(8)%>">9</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(10, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(9).getDisponibilidad()%>)"><p class="<%=estado.get(9)%>">10</p></a>
                        </div>
                        <div class="fila">
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(11, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(10).getDisponibilidad()%>)"><p class="<%=estado.get(10)%>">11</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(12, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(11).getDisponibilidad()%>)"><p class="<%=estado.get(11)%>">12</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(13, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(12).getDisponibilidad()%>)"><p class="<%=estado.get(12)%>">13</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(14, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(13).getDisponibilidad()%>)"><p class="<%=estado.get(13)%>">14</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(15, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(14).getDisponibilidad()%>)"><p class="<%=estado.get(14)%>">15</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(16, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(15).getDisponibilidad()%>)"><p class="<%=estado.get(15)%>">16</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(17, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(16).getDisponibilidad()%>)"><p class="<%=estado.get(16)%>">17</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(18, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(17).getDisponibilidad()%>)"><p class="<%=estado.get(17)%>">18</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(19, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(18).getDisponibilidad()%>)"><p class="<%=estado.get(18)%>">19</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(20, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(19).getDisponibilidad()%>)"><p class="<%=estado.get(19)%>">20</p></a>
                        </div>
                    </div>
                </div>
                <div class="grupo">
                    <p class="piso">Segundo piso</p>
                    <div class="asientos">
                        <div class="fila">
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(21, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(20).getDisponibilidad()%>)"><p class="<%=estado.get(20)%>">21</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(22, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(21).getDisponibilidad()%>)"><p class="<%=estado.get(21)%>">22</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(23, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(22).getDisponibilidad()%>)"><p class="<%=estado.get(22)%>">23</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(24, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(23).getDisponibilidad()%>)"><p class="<%=estado.get(23)%>">24</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(25, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(24).getDisponibilidad()%>)"><p class="<%=estado.get(24)%>">25</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(26, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(25).getDisponibilidad()%>)"><p class="<%=estado.get(25)%>">26</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(27, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(26).getDisponibilidad()%>)"><p class="<%=estado.get(26)%>">27</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(28, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(27).getDisponibilidad()%>)"><p class="<%=estado.get(27)%>">28</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(29, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(28).getDisponibilidad()%>)"><p class="<%=estado.get(28)%>">29</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(30, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(29).getDisponibilidad()%>)"><p class="<%=estado.get(29)%>">30</p></a>
                        </div>
                        <div class="fila">
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(31, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(30).getDisponibilidad()%>)"><p class="<%=estado.get(30)%>">31</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(32, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(31).getDisponibilidad()%>)"><p class="<%=estado.get(31)%>">32</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(33, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(32).getDisponibilidad()%>)"><p class="<%=estado.get(32)%>">33</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(34, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(33).getDisponibilidad()%>)"><p class="<%=estado.get(33)%>">34</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(35, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(34).getDisponibilidad()%>)"><p class="<%=estado.get(34)%>">35</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(36, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(35).getDisponibilidad()%>)"><p class="<%=estado.get(35)%>">36</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(37, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(36).getDisponibilidad()%>)"><p class="<%=estado.get(36)%>">37</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(38, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(37).getDisponibilidad()%>)"><p class="<%=estado.get(37)%>">38</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(39, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(38).getDisponibilidad()%>)"><p class="<%=estado.get(38)%>">39</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(40, <%=itinerario_id%>, <%=precio%>, <%=cuenta_id%>, <%=list.get(39).getDisponibilidad()%>)"><p class="<%=estado.get(39)%>">40</p></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
    <script>
        function ingresaDatos(val, val2, val3, val4, val5) {
            if(val5 == 1){
                alert("El asiento esta ocupado");
            }
            else if(val5 == 0){
                $.post("u01-ingresarDatos.jsp", {val: val, val2: val2, val3: val3, val4: val4, val5: val5})
                    .done(function (data) {
                        $('#contenido2').html(data);
//                console.log(data);
                    });
            }
            
        }
    </script>
</html>
