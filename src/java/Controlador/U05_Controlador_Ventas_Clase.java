
package Controlador;

import Modelo.U05_Ventas_Clase;
import ModeloDao.U05_Ventas_ClaseDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "U05_Controlador_Ventas_Clase", urlPatterns = {"/U05_Controlador_Ventas_Clase"})
public class U05_Controlador_Ventas_Clase extends HttpServlet {

  
    String listar="Vistas/U05-G-VCL.jsp";
    U05_Ventas_Clase p=new U05_Ventas_Clase();
    U05_Ventas_ClaseDao dao=new U05_Ventas_ClaseDao();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet U05_Controlador_Ventas_Clase</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U05_Controlador_Ventas_Clase at " + request.getContextPath() + "</h1>");
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
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
       String acceso="";
       String accion=request.getParameter("accion");
       if (accion.equalsIgnoreCase("listar")){
           System.out.println("lskjdfsdfsdf");
        acceso=listar;
       }
       
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
        processRequest(request, response);
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
