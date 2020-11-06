/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.U01_Pasajero;
import Modelo.U01_Ruta;
import ModeloDao.U01_PasajeroDao;
import ModeloDao.U01_RutasDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author V330
 */
@WebServlet(name = "U01_Controlador", urlPatterns = {"/U01_Controlador"})
public class U01_Controlador extends HttpServlet {
//-------pasajero------------
    String guardar_pasajero = "vista/u01-compraPasajes.jsp";
    String mostrar_rutas = "/vista/u01-mostrarRutas.jsp";
    U01_Pasajero pasajero = new U01_Pasajero();
    U01_PasajeroDao pasajeroDao = new U01_PasajeroDao();
    U01_Ruta ruta = new U01_Ruta();
    U01_RutasDao rutaDao = new U01_RutasDao();
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
            
            String origen = request.getParameter("origen");
            String destino = request.getParameter("destino");
            String fecha = request.getParameter("fecha");
            
            System.out.println("origen: "+origen);
            System.out.println("destino: "+destino);
            System.out.println("fecha: "+fecha);
            
            ruta.setOrigen(origen);
            ruta.setDestino(destino);
            ruta.setFecha(fecha);
            
            rutaDao.consultar_ruta(origen, destino, fecha);

            acceso = mostrar_rutas;    
        }
//        RequestDispatcher vista=request.getRequestDispatcher(acceso);
//        vista.forward(request,response);
    }
}
