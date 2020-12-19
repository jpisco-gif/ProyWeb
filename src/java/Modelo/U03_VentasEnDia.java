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
public class U03_VentasEnDia {
    String dias;
    int ventasD;

    public U03_VentasEnDia() {
    }

    public U03_VentasEnDia(String dias, int ventasD) {
        this.dias = dias;
        this.ventasD = ventasD;
    }

    public String getDias() {
        return dias;
    }

    public void setDias(String dias) {
        this.dias = dias;
    }

    public int getVentasD() {
        return ventasD;
    }

    public void setVentasD(int ventasD) {
        this.ventasD = ventasD;
    }
    
}
