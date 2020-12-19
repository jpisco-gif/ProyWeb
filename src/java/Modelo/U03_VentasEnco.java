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
    String fechaA;
    int enco;
    int ventas;   

    public U03_VentasEnco() {
    }

    public U03_VentasEnco(String fechaA, int enco, int ventas) {
        this.fechaA = fechaA;
        this.enco = enco;
        this.ventas = ventas;
    }

    public String getFechaA() {
        return fechaA;
    }

    public void setFechaA(String fechaA) {
        this.fechaA = fechaA;
    }

    public int getEnco() {
        return enco;
    }

    public void setEnco(int enco) {
        this.enco = enco;
    }

    public int getVentas() {
        return ventas;
    }

    public void setVentas(int ventas) {
        this.ventas = ventas;
    }

    
}
