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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
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
            response.sendRedirect("Vistas/u01-comprarPasaje.jsp");   
        }
        
        else if(accion.equalsIgnoreCase("guardarPasaje")){
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
            
            response.sendRedirect("Vistas/u01-comprarPasaje.jsp");
            //acceso = comprar_pasajes;
            
        }
        
        else if(accion.equalsIgnoreCase("login")){
            String usuario = request.getParameter("usuario");
            String contraseña = request.getParameter("contraseña");
            
            if (usuario!=null) {
            System.out.println("usuario: "+usuario);
            System.out.println("contraseña: "+contraseña);
            
            cuenta.setUsuario(usuario);
            cuenta.setContraseña(contraseña);
            //cuentaDao.login(cuenta);
            
            List<U04_Cuenta> list = cuentaDao.login(cuenta);
            int rol_id2 = list.get(0).getRol_id();
            int cuenta_id2 = list.get(0).getCuenta_id();
            System.out.println("usuario2: "+rol_id2);
            System.out.println("cuenta2: "+cuenta_id2);
            sesion.setAttribute("cuenta_id", cuenta_id2);
            if(rol_id2 == 1){
                response.sendRedirect("Vistas/U04-index.jsp");
            }
            else if(rol_id2 == 2){
                response.sendRedirect("Vistas/u01-consultarRuta.jsp");
            }
            else if(rol_id2 == 3){
                response.sendRedirect("Vistas/U05-G-index.jsp");
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
