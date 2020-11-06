/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.U04_Cuenta;
import ModeloDao.U04_CuentaDao;
import java.io.IOException;
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
 * @author Usuario
 */
public class U04_Controlador_Quejas extends HttpServlet {
    
    private U04_CuentaDao loginDao;

    @Override
    public void init() {
        loginDao = new U04_CuentaDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String direccion= request.getParameter("direccion");
        int edad= Integer.parseInt(request.getParameter("edad"));
        String mensaje= request.getParameter("mensaje");
        U04_CuentaDao loginBean= new U04_CuentaDao();
        loginBean.setEmail(fullname);
        loginBean.setContraseña(email);
        loginBean.setFullname(direccion);
        loginBean.setEdad(edad);
        loginBean.setMensaje(mensaje);
        
        try {
            if (loginDao.consulta(fullname, email, direccion, edad, mensaje)) {
                response.sendRedirect("U04-Inicio/U04-AtencioAlCliente.jsp");
            } else {
                response.sendRedirect("U04-Inicio/U04-index.jsp");
            }
        } catch (IOException e) {
            System.out.println("error"+e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(U04_Controlador_Quejas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}