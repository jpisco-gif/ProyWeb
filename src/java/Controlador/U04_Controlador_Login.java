/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.U04_Cuenta;
import ModeloDao.U04_CuentaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;


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

public class U04_Controlador_Login extends HttpServlet{
    private U04_CuentaDao loginDao;

    @Override
    public void init() {
        loginDao = new U04_CuentaDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession sesion= request.getSession(false);
        PrintWriter out= response.getWriter();
        
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contraseña");
        
        U04_CuentaDao loginBean= new U04_CuentaDao();
        loginBean.setEmail(usuario);
        loginBean.setContraseña(contraseña);
        
  
        try {
            
            switch (loginDao.validate(usuario, contraseña)) {
                case 1:
                    sesion.setAttribute("usuario", usuario);
                    sesion.setAttribute("contraseña", contraseña);                   
                    sesion.setAttribute("rol_id", "1");
                    response.sendRedirect("/web-final/vistas/vista_usuario/Vistas/U04-index.jsp");
                    break;
                    
                case 2:
                    
                    sesion.setAttribute("usuario", usuario);
                    sesion.setAttribute("contraseña", contraseña);
                    sesion.setAttribute("rol_id", "2");
                    response.sendRedirect("/web-final/vistas/vista_administrador/index.jsp");
                    break;
                    
                case 3:
                    sesion.setAttribute("usuario", usuario);
                    sesion.setAttribute("contraseña", contraseña);
                    sesion.setAttribute("rol_id", "3");
                    response.sendRedirect("/web-final/vistas/vista_gerencia/vistas/U05-index.jsp");
                    break;
                default:
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Email o contraseña incorrecta');");
                    out.println("location='../Vistas/U04-login.jsp';");
                    out.println("</script>");
                    
            }
        } catch (NumberFormatException e) {
            System.out.println("hubo un error "+e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(U04_Controlador_Login.class.getName()).log(Level.SEVERE, null, ex);
        } 
        }
                   
        }
    

