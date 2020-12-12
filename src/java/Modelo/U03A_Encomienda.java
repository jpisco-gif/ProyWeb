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
public class U03A_Encomienda {
    int id;
    String envia_nom;
    String envia_ape;
    int envia_dni;
    String recoge_nom;
    String recoge_ape;
    int recoge_dni;
    int lugar_recojo;
    String Ciudad;
    int peso;
    int monto;
    

    public U03A_Encomienda() {
    }

    public U03A_Encomienda(int id, String envia_nom, String envia_ape, int envia_dni, String recoge_nom, String recoge_ape, int recoge_dni, int lugar_recojo, String Ciudad, int peso, int monto) {
        this.id = id;
        this.envia_nom = envia_nom;
        this.envia_ape = envia_ape;
        this.envia_dni = envia_dni;
        this.recoge_nom = recoge_nom;
        this.recoge_ape = recoge_ape;
        this.recoge_dni = recoge_dni;
        this.lugar_recojo = lugar_recojo;
        this.Ciudad = Ciudad;
        this.peso = peso;
        this.monto = monto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEnvia_nom() {
        return envia_nom;
    }

    public void setEnvia_nom(String envia_nom) {
        this.envia_nom = envia_nom;
    }

    public String getEnvia_ape() {
        return envia_ape;
    }

    public void setEnvia_ape(String envia_ape) {
        this.envia_ape = envia_ape;
    }

    public int getEnvia_dni() {
        return envia_dni;
    }

    public void setEnvia_dni(int envia_dni) {
        this.envia_dni = envia_dni;
    }

    public String getRecoge_nom() {
        return recoge_nom;
    }

    public void setRecoge_nom(String recoge_nom) {
        this.recoge_nom = recoge_nom;
    }

    public String getRecoge_ape() {
        return recoge_ape;
    }

    public void setRecoge_ape(String recoge_ape) {
        this.recoge_ape = recoge_ape;
    }

    public int getRecoge_dni() {
        return recoge_dni;
    }

    public void setRecoge_dni(int recoge_dni) {
        this.recoge_dni = recoge_dni;
    }

    public int getLugar_recojo() {
        return lugar_recojo;
    }

    public void setLugar_recojo(int lugar_recojo) {
        this.lugar_recojo = lugar_recojo;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
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

    

}