package Controlador;

import Modelo.U05_Rendimiento;
import ModeloDao.U05_RendimientoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "U05_Controlador_Rendimiento", urlPatterns = {"/U05_Controlador_Rendimiento"})
public class U05_Controlador_Rendimiento extends HttpServlet {

    String listar="Vistas/U05-G-R-L.jsp";
    String add="Vistas/U05-G-A-R.jsp";
    U05_Rendimiento p=new U05_Rendimiento();
    U05_RendimientoDao dao=new U05_RendimientoDao();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet U05_Controlador_Rendimiento</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U05_Controlador_Rendimiento at " + request.getContextPath() + "</h1>");
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
       
       
       else if(accion.equalsIgnoreCase("add")){
       acceso=add;
       }
       
       
       else if(accion.equalsIgnoreCase("Agregar")){
       
       int terminal_id = 0;    
       
       
       String terminal=request.getParameter("txtTerminal_id");
       
       switch(terminal) 
        { 
            case "Lima": 
                terminal_id=1;
                break; 
            case "Ica": 
                terminal_id=2;
                break; 
            case "Arequipa": 
                terminal_id=3;
                break; 
            case "Cusco": 
                terminal_id=4; 
                break;
            case "Huancayo": 
                terminal_id=5; 
                break;     
                
                
            default: 
                System.out.println("HAY UN PROBLEMA!!! SWITCH TERMINAL FUNCIONA MAL"); 
        } 
       
       
       if(terminal_id==0){System.out.println("HAY UN PROBLEMA!!! SWITCH TERMINAL , valor terminal_id=0 !!!"); }
       
       
       int satisfaccion=Integer.parseInt(request.getParameter("txtSatisfaccion"));
       int atencion=Integer.parseInt(request.getParameter("txtAtencion"));
       int capacitacion=Integer.parseInt(request.getParameter("txtCapacitacion"));
       int limpieza=Integer.parseInt(request.getParameter("txtLimpieza"));
       int incidencias=Integer.parseInt(request.getParameter("txtIncidencias"));
       
       int puntuacion=0;
       puntuacion=satisfaccion+atencion+capacitacion+limpieza;
       
       if(puntuacion==0){System.out.println("HAY UN PROBLEMA!!! valor puntuacion =0 !!!"); }
       
       p.setTerminal_id(terminal_id);
       p.setCiudad(terminal);
       
       
       p.setPuntuacion(puntuacion);
       p.setIncidencias(incidencias);        
       
       p.setMes("VALOR TEMPORAL");   
       
       
       dao.add(p);
       acceso=listar;      
               
       }
        
        
       RequestDispatcher vista=request.getRequestDispatcher(acceso);
       vista.forward(request,response);
    }

    
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
