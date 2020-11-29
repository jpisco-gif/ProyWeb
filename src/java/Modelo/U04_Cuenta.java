/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author V330
 */
public class U04_Cuenta {
    private int cuenta_id;
    private int rol_id;
    private String usuario;
    private String direccion;
    private String email;
    private String contraseña;
    private String fullname;
    private int edad;
    private String mensaje;
    private int intento_fallido;
    private int log_id;
    private int estado;
    private Date tiempo_inicio;
    private Date tiempo_fin;

    public Date getTiempo_inicio() {
        return tiempo_inicio;
    }

    public void setTiempo_inicio(Date tiempo_inicio) {
        this.tiempo_inicio = tiempo_inicio;
    }

    public Date getTiempo_fin() {
        return tiempo_fin;
    }

    public void setTiempo_fin(Date tiempo_fin) {
        this.tiempo_fin = tiempo_fin;
    }

    
    
    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    

    public int getIntento_fallido() {
        return intento_fallido;
    }

    public void setIntento_fallido(int intento_fallido) {
        this.intento_fallido = intento_fallido;
    }

    public int getLog_id() {
        return log_id;
    }

    public void setLog_id(int log_id) {
        this.log_id = log_id;
    }
    
    

    public int getCuenta_id() {
        return cuenta_id;
    }

    public void setCuenta_id(int cuenta_id) {
        this.cuenta_id = cuenta_id;
    }

   

    public int getRol_id() {
        return rol_id;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    
    public String getEmail() {
        return email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

   
}
