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
public class U03_VentasUltEn {
    int peso;
    int monto;
    String ciudad;

    public U03_VentasUltEn() {
    }

    public U03_VentasUltEn(int peso, int monto, String ciudad) {
        this.peso = peso;
        this.monto = monto;
        this.ciudad = ciudad;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    
    
    
}
