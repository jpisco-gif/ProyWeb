/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author V330
 */
public class U01_Ruta {
    private String fecha;
    private String hora;
    private String origen;
    private String destino;
    private int puerta_embarque;
    private int puerta_llegada;
    private  int itinerarios_id;
    private int duracion;
    private double precio;

    public U01_Ruta() {
    }

    public U01_Ruta(String fecha, String hora, String origen, String destino, int puerta_embarque, int puerta_llegada, int itinerarios_id, int duracion, double precio) {
        this.fecha = fecha;
        this.hora = hora;
        this.origen = origen;
        this.destino = destino;
        this.puerta_embarque = puerta_embarque;
        this.puerta_llegada = puerta_llegada;
        this.itinerarios_id = itinerarios_id;
        this.duracion = duracion;
        this.precio = precio;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getPuerta_embarque() {
        return puerta_embarque;
    }

    public void setPuerta_embarque(int puerta_embarque) {
        this.puerta_embarque = puerta_embarque;
    }

    public int getPuerta_llegada() {
        return puerta_llegada;
    }

    public void setPuerta_llegada(int puerta_llegada) {
        this.puerta_llegada = puerta_llegada;
    }

    

    public String getOrigen() {
        return origen;
    }

    public void setOrigen(String origen) {
        this.origen = origen;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getItinerarios_id() {
        return itinerarios_id;
    }

    public void setItinerarios_id(int itinerarios_id) {
        this.itinerarios_id = itinerarios_id;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    
}
