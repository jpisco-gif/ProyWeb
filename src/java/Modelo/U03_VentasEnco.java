/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Javier Pisco
 */
public class U03_VentasEnco {
    String fechaE;
    Float ventas;

    public U03_VentasEnco() {
    }

    public U03_VentasEnco(String fechaE, Float ventas) {
        this.fechaE = fechaE;
        this.ventas = ventas;
    }

    public String getFechaE() {
        return fechaE;
    }

    public void setFechaE(String fechaE) {
        this.fechaE = fechaE;
    }

    public Float getVentas() {
        return ventas;
    }

    public void setVentas(Float ventas) {
        this.ventas = ventas;
    }

    
    
}
