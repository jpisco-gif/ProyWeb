/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.U03A_Encomienda;
import ModeloDao.U03A_EncomiendaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "U03A_Controlador", urlPatterns = {"/U03A_Controlador"})
public class U03A_Controlador extends HttpServlet {

    String listarEn = "Vistas/U03A-listarEn.jsp";
    String addEn = "Vistas/U03A-addEn.jsp";
    String editEn = "Vistas/U03A-editEn.jsp";
    U03A_EncomiendaDao end = new U03A_EncomiendaDao();
    U03A_Encomienda en = new U03A_Encomienda();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet U03A_Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U03A_Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listarEn")) {
            acceso = listarEn;
        } else if (action.equalsIgnoreCase("addEn")) {
            acceso = addEn;
        } else if (action.equals("Agregar")) {
            String Enom = request.getParameter("txtNomE");
            String Eape = request.getParameter("txtApeE");
            int Edni = Integer.parseInt(request.getParameter("txtDniE"));
            String Rnom = request.getParameter("txtNomR");
            String Rape = request.getParameter("txtApeR");
            int Rdni = Integer.parseInt(request.getParameter("txtDniR"));
            int lugar = Integer.parseInt(request.getParameter("txtLug"));
            en.setEnvia_nom(Enom);
            en.setEnvia_ape(Eape);
            en.setEnvia_dni(Edni);
            en.setRecoge_nom(Rnom);
            en.setRecoge_ape(Rape);
            en.setRecoge_dni(Rdni);
            en.setLugar_recojo(lugar);
            end.add(en);
            acceso = listarEn;
        } else if (action.equalsIgnoreCase("editarEn")) {
            //request.setAttribute("iden", request.getParameter("id"));
            //int ruta_id = Integer.parseInt(request.getParameter("id"));
            sesion.setAttribute("iden", request.getParameter("id"));
            acceso = editEn;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            String xid = request.getParameter("txtId");
            int id = Integer.parseInt(xid);
            String Enom = request.getParameter("txtNomE");
            String Eape = request.getParameter("txtApeE");
            int Edni = Integer.parseInt(request.getParameter("txtDniE"));
            String Rnom = request.getParameter("txtNomR");
            String Rape = request.getParameter("txtApeR");
            int Rdni = Integer.parseInt(request.getParameter("txtDniR"));
            int lugar = Integer.parseInt(request.getParameter("txtLug"));
            en.setId(id);
            en.setEnvia_nom(Enom);
            en.setEnvia_ape(Eape);
            en.setEnvia_dni(Edni);
            en.setRecoge_nom(Rnom);
            en.setRecoge_ape(Rape);
            en.setRecoge_dni(Rdni);
            en.setLugar_recojo(lugar);
            end.edit(en);
            acceso = listarEn;
        }
       // RequestDispatcher vista=request.getRequestDispatcher(acceso);
       //vista.forward(request,response);
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
