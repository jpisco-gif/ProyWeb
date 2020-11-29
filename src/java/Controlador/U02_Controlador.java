/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.U02_Ruta;
import ModeloDao.U02_RutasDao;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "U02_Controlador", urlPatterns = {"/U02_Controlador"})
public class U02_Controlador extends HttpServlet {
String listar="Vistas/U02-Listar";
String add="Vistas/U02-Add.jsp";
String edit="Vistas/U02-Editar.jsp";
String eliminar = "Vistas/U02-Eliminar.jsp";
U02_Ruta p=new U02_Ruta();
U02_RutasDao dao=new U02_RutasDao();
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
            out.println("<title>Servlet U02_Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U02_Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurssssssss
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
       String acceso = "";
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("listar")) {
            acceso = listar;
            
        }else if (accion.equalsIgnoreCase("add")) {
            acceso = add;

        }else if (accion.equalsIgnoreCase("Agregar")) {
            int ruta = Integer.parseInt(request.getParameter("txtruta"));
            int embarque = Integer.parseInt(request.getParameter("txtEmbarque"));
            String llegada = request.getParameter("txtLlegada");
            double costo = Double.parseDouble(request.getParameter("txtCosto"));
            int duracion = Integer.parseInt(request.getParameter("txtduracion"));
            String descripcion = request.getParameter("txtDescripcion");
            p.setRuta(ruta);
            p.setEmbarque(embarque);
            p.setLlegada(Integer.parseInt(llegada));
            p.setCosto(costo);
            p.setDuracion(duracion);
            p.setDescripcion(descripcion);
            dao.add(p);
            acceso = listar;

        } else if (accion.equalsIgnoreCase("editar")) {
            //request.setAttribute("iden", request.getParameter("ruta_id"));
            int ruta_id = Integer.parseInt(request.getParameter("ruta_id"));
            sesion.setAttribute("iden", ruta_id);
            acceso = edit;
            
        } else if (accion.equalsIgnoreCase("Actualizar")) {
            String xruta = request.getParameter("txtruta");
            int ruta_id = Integer.parseInt(xruta);
            int embarque = Integer.parseInt(request.getParameter("txtEmbarque"));
            String llegada = request.getParameter("txtLlegada");
            double costo = Double.parseDouble(request.getParameter("txtCosto"));
            int duracion = Integer.parseInt(request.getParameter("txtduracion"));
            String descripcion = request.getParameter("txtDescripcion");
            p.setRuta(ruta_id);
            p.setEmbarque(embarque);
            p.setLlegada(Integer.parseInt(llegada));
            p.setCosto(costo);
            p.setDuracion(duracion);
            p.setDescripcion(descripcion);
            dao.edit(p);
            acceso = listar;
        }
       
//       RequestDispatcher vista=request.getRequestDispatcher(acceso);
//       vista.forward(request,response);
       response.sendRedirect(acceso);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
