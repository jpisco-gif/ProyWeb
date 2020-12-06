/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.U01_Comprobante;
import Modelo.U01_Pasajero;
import Modelo.U01_Ruta;
import Modelo.U04_Cuenta;
import ModeloDao.U01_ComprobanteDao;
import ModeloDao.U01_CuentaDao;
import ModeloDao.U01_PasajeroDao;
import ModeloDao.U01_RutasDao;
import ModeloDao.U04_CuentaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author V330
 */
@WebServlet(name = "U01_Controlador", urlPatterns = {"/U01_Controlador"})
public class U01_Controlador extends HttpServlet {
//-------pasajero------------
    String guardar_pasajero = "vista/u01-compraPasajes.jsp";

    String comprar_pasajes = "/Vistas/u01-comprarPasaje.jsp";
    
    U01_Pasajero pasajero = new U01_Pasajero();
    U01_PasajeroDao pasajeroDao = new U01_PasajeroDao();
    U01_Ruta ruta = new U01_Ruta();
    U01_RutasDao rutaDao = new U01_RutasDao();
    U01_Comprobante comp = new U01_Comprobante();
    U01_ComprobanteDao compDao = new U01_ComprobanteDao();
    U04_Cuenta cuenta = new U04_Cuenta();
    U04_Cuenta cuenta2= new U04_Cuenta();
    U01_CuentaDao cuentaDao = new U01_CuentaDao();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet U01_Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U01_Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("logout")){
            int cuenta_id = Integer.parseInt(request.getParameter("cuenta_id"));
            int log_id = Integer.parseInt(request.getParameter("log_id"));
            cuentaDao.logout(cuenta_id, log_id);
            sesion.invalidate();
            response.sendRedirect("Vistas/Index.jsp");
        }
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        PrintWriter out= response.getWriter();
        String acceso = "";
        String accion = request.getParameter("accion");
        
        if(accion.equalsIgnoreCase("Agregar")){
            String tipo_doc = request.getParameter("tipo");
            String numdoc = request.getParameter("numdoc");
            String nombre = request.getParameter("nombre");
            String apepat = request.getParameter("apepat");
            String apemat = request.getParameter("apemat");
            String edad = request.getParameter("edad");
            String sexo = request.getParameter("sexo");
            String telef = request.getParameter("telef");
            //String correo = request.getParameter("correo");
            String itinerario_id = request.getParameter("itinerario_id");
            String nom_asiento = request.getParameter("nom_asiento");
            String usuario_id = request.getParameter("usuario_id");
            
            System.out.println("tipodoc: "+tipo_doc);
            System.out.println("numdoc: "+numdoc);
            System.out.println("nombre: "+nombre);
            System.out.println("apepat: "+apepat);
            System.out.println("apemat: "+apemat);
            System.out.println("edad: "+edad);
            System.out.println("sexo: "+sexo);
            System.out.println("telef: "+telef);
            System.out.println("itinerario: "+itinerario_id);
            System.out.println("nom_asiento: "+nom_asiento);
            System.out.println("usuarioid: "+usuario_id);
            
            pasajero.setTipo_doc(tipo_doc);
            pasajero.setNumdoc(numdoc);
            pasajero.setNombre(nombre);
            pasajero.setApepat(apepat);
            pasajero.setApemat(apemat);
            pasajero.setEdad(edad);
            pasajero.setSexo(sexo);
            pasajero.setTelef(telef);
            //pasajero.setCorreo(correo);
            pasajero.setItinerario_id(itinerario_id);
            pasajero.setNom_asiento(nom_asiento);
            pasajero.setUsuario_id(usuario_id);
            pasajeroDao.guardar(pasajero);
            acceso = guardar_pasajero;
        }
        
        else if(accion.equalsIgnoreCase("consultar-rutas")){
            int rol_id = Integer.parseInt(request.getParameter("rol_id"));
            int origen = Integer.parseInt(request.getParameter("origen"));
            int destino = Integer.parseInt(request.getParameter("destino"));
            String fecha = request.getParameter("fecha");
            
            System.out.println("origen: "+origen);
            System.out.println("destino: "+destino);
            System.out.println("fecha: "+fecha);
            
            
            ruta.setId_origen(origen);
            ruta.setId_destino(destino);
            ruta.setFecha(fecha);
            
            List<U01_Ruta> list = rutaDao.consultar_ruta(origen, destino, fecha);
            //request.setAttribute("rutas", list);
            sesion.setAttribute("rutas", list);
            sesion.setAttribute("origen", origen);
            sesion.setAttribute("destino", destino);
            sesion.setAttribute("fecha", fecha);
            if(rol_id == 1){
                response.sendRedirect("Vistas/u01-comprarPasaje.jsp"); 
            }
            else if(rol_id == 2){
                response.sendRedirect("Vistas/U03-Vender.jsp"); 
            }
              
        }
        
        else if(accion.equalsIgnoreCase("guardarPasaje")){
            int rol_id = Integer.parseInt(request.getParameter("rol_id"));
            String tipo_doc = request.getParameter("tipo-doc");
            String numdoc = request.getParameter("numdoc");
            String nombre = request.getParameter("nombre");
            String apepat = request.getParameter("apepat");
            String apemat = request.getParameter("apemat");
            int edad = Integer.parseInt(request.getParameter("edad"));
            String sexo = request.getParameter("sexo");
            int telefono = Integer.parseInt(request.getParameter("telef"));
            String correo = request.getParameter("correo");
            int num_asiento = Integer.parseInt(request.getParameter("nom_asiento"));
            int cuenta_id = Integer.parseInt(request.getParameter("cuenta_id"));
            double precio = Double.parseDouble(request.getParameter("precio"));
            int itinerario_id = Integer.parseInt(request.getParameter("itinerario_id"));
            int estado_pago = Integer.parseInt(request.getParameter("estado_pago"));
            
            System.out.println("tipo-doc: "+tipo_doc);
            System.out.println("numdoc: "+numdoc);
            System.out.println("nombre: "+nombre);
            System.out.println("apepat: "+apepat);
            System.out.println("apemat: "+apemat);
            System.out.println("edad: "+edad);
            System.out.println("sexo: "+sexo);
            System.out.println("telefono: "+telefono);
            System.out.println("correo: "+correo);
            System.out.println("num_asiento: "+num_asiento);
            System.out.println("cuenta_id: "+cuenta_id);
            System.out.println("precio: "+precio);
            System.out.println("itinerario: "+itinerario_id);
            System.out.println("estado pago: "+estado_pago);
            comp.setTipo_doc(tipo_doc);
            comp.setNumdoc(numdoc);
            comp.setNombre(nombre);
            comp.setApepat(apepat);
            comp.setApemat(apemat);
            comp.setEdad(edad);
            comp.setSexo(sexo);
            comp.setTelefono(telefono);
            comp.setCorreo(correo);
            comp.setNum_asiento(num_asiento);
            comp.setCuenta_id(cuenta_id);
            comp.setPrecio(precio);
            comp.setItinerario_id(itinerario_id);
            comp.setEstado_pago(estado_pago);
            compDao.guardar_pasaje(comp);
            
            if(rol_id == 1){
                response.sendRedirect("Vistas/u01-comprarPasaje.jsp");
            }
            else if(rol_id == 2){
                response.sendRedirect("Vistas/U03-Vender.jsp");
            }
            
            //acceso = comprar_pasajes;
            
        }
        
        else if (accion.equalsIgnoreCase("login")) {
            
            String usuario = request.getParameter("usuario");
            String contraseña = request.getParameter("contraseña");
            System.out.println("usuario: "+usuario);
            System.out.println("contraseña: "+contraseña);
            int intento_fallido = 0;
            int cuenta_id = 0;
            int log_id = 0;

            cuenta.setUsuario(usuario);
            cuenta.setContraseña(contraseña);
            cuentaDao.login(cuenta);
            
            String usuarioReal = "";
            String contraseñaReal = "";
            List<U04_Cuenta> list = cuentaDao.login(cuenta);
            if(list.size() != 0){
                
                try {
                    usuarioReal = list.get(0).getUsuario();
                    cuenta_id = list.get(0).getCuenta_id();
                    contraseñaReal = list.get(0).getContraseña();
                } catch (Exception e) {
                    response.sendRedirect("Vistas/U04-login.jsp");
                }
                System.out.println("usuario real: "+usuarioReal);
                System.out.println("cuenta_id: "+cuenta_id);
                System.out.println("contraseña real: "+contraseñaReal);
            }
            else{
                List<U04_Cuenta> list2 = cuentaDao.login_fallido(usuario);
                cuentaDao.login_fallido(usuario);
                try {
                    cuenta_id = list2.get(0).getCuenta_id();
                    intento_fallido = list2.get(0).getIntento_fallido();
                } catch (Exception e) {
                    response.sendRedirect("Vistas/U04-login.jsp");
                }
                
                System.out.println("cuenta_id fallido: "+cuenta_id);
                System.out.println("intento fallido: "+intento_fallido);
            }
            //---------------------caso1--------------------------
            if (usuario.equalsIgnoreCase(usuarioReal) && contraseña.equalsIgnoreCase(contraseñaReal)) {
                System.out.println("entra al caso 1");
                int rol_id2 = list.get(0).getRol_id();
                int cuenta_id2 = list.get(0).getCuenta_id();
                String usuario2 = list.get(0).getUsuario();
                int estado = 1;
                System.out.println("usuario2: " + rol_id2);
                System.out.println("cuenta2: " + cuenta_id2);
                System.out.println("estado: "+estado);
                System.out.println("contraseña: "+contraseña);
                
                sesion.setAttribute("cuenta_id", cuenta_id2);
                sesion.setAttribute("usuario", usuario2);
                sesion.setAttribute("rol_id", rol_id2);
                
                cuentaDao.logeos(cuenta_id2, estado, contraseña);
                List<U04_Cuenta> list3 = cuentaDao.consulta_log(cuenta_id2);
                log_id = list3.get(0).getCuenta_id();
                sesion.setAttribute("log_id", log_id);
                
                
                if (rol_id2 == 1) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Bienvenido al perfil de usuario');");
                    out.println("location='Vistas/Index.jsp';");
                    out.println("</script>");             
                } else if (rol_id2 == 2) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Bienvenido al perfil de administrador');");
                    out.println("location='Vistas/A_Index.jsp';");
                    out.println("</script>");                
                } else if (rol_id2 == 3) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Bienvenido al perfil de Gerente');");
                    out.println("location='Vistas/U05-G-index.jsp';");
                    out.println("</script>");                    
                }
                
            //---------------------caso2-----------------------------
            }else if(contraseñaReal == ""){
                //menos de 3 intentos fallidos
                if(intento_fallido <= 2){
                System.out.println("entro al caso 2");
                int estado = 0;
                System.out.println("intento fallido: "+intento_fallido);
                intento_fallido += 1;
                System.out.println("nuevo intento fallido: "+intento_fallido);
                System.out.println("cuenta id: "+cuenta_id);
                System.out.println("contraseña: "+contraseña);
                System.out.println("estado: "+estado);
                
                cuentaDao.intento_fallido(cuenta_id, estado, intento_fallido, contraseña);
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Error al ingresar contraseña o usuario, verifique que esten correctos ');");
                    out.println("location='Vistas/U04-login.jsp';");
                    out.println("</script>");                
                }
                //mas de 3 intentos fallidos
                else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Lo sentimos, Intentos maximos hechos, espere a que se desbloquee su cuenta ');");
                    out.println("location='Vistas/U04-login.jsp';");
                    out.println("</script>");  
                }
            }
        }
        else if(accion.equalsIgnoreCase("eliminar-pasaje")){
            int comprobante_id = Integer.parseInt(request.getParameter("comprobante_id"));
            int persona_id = Integer.parseInt(request.getParameter("persona_id"));
            int itinerario_id = Integer.parseInt(request.getParameter("itinerario_id"));
            int num_asiento = Integer.parseInt(request.getParameter("num_asiento"));
            System.out.println("comprobante_id: "+comprobante_id);
            System.out.println("persona_id: "+persona_id);
            compDao.eliminar_pasaje(comprobante_id, persona_id, itinerario_id, num_asiento);
            
            response.sendRedirect("Vistas/u01-comprarPasaje.jsp");
        }
        
        else if(accion.equalsIgnoreCase("pagar-pasajes")){
            int cuenta_id = Integer.parseInt(request.getParameter("cuenta_id"));
            System.out.println("cuenta_id: "+cuenta_id);
            compDao.pagar(cuenta_id);
            
            response.sendRedirect("Vistas/u01-comprarPasaje.jsp");
        }
        
        else if(accion.equalsIgnoreCase("editarDatos")){
            String usuario_id = request.getParameter("usuario_id");
            String nombres = request.getParameter("nombre");
            String apepat = request.getParameter("apepat");
            String apemat = request.getParameter("apemat");
            String sexo = request.getParameter("sexo");
            int telefono = Integer.parseInt(request.getParameter("telef"));
            int edad = Integer.parseInt(request.getParameter("edad"));
            String numdoc = request.getParameter("numdoc");
            String tipo_doc = request.getParameter("tipo-doc");
            
            System.out.println("usuario_id: "+usuario_id);
            System.out.println("nombres: "+nombres);
            System.out.println("apemat: "+apemat);
            System.out.println("apepat: "+apepat);
            System.out.println("tipo-doc: "+tipo_doc);
            System.out.println("numdoc: "+numdoc);
            System.out.println("edad: "+edad);
            System.out.println("sexo: "+sexo);
            System.out.println("telefono: "+telefono);
            
            comp.setUsuario_id(usuario_id);
            comp.setNombre(nombres);
            comp.setApemat(apemat);
            comp.setApepat(apepat);
            comp.setSexo(sexo);
            comp.setTelefono(telefono);
            comp.setEdad(edad);
            comp.setNumdoc(numdoc);
            comp.setTipo_doc(tipo_doc);
            
            compDao.editarDatos(comp);
            response.sendRedirect("Vistas/u01-comprarPasaje.jsp");
        }
        
            //response.sendRedirect("Vistas/u01-comprarPasaje.jsp");//aqui falta corregir
    }
}
