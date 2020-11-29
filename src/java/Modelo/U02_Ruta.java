
package Modelo;

/**
 *
 * @author V330
 */
public class U02_Ruta {
    int ruta ;
    int embarque ; 
    int llegada ; 
    double costo ; 
    int duracion ; 
    String descripcion ;

    public U02_Ruta() {
    }

    public U02_Ruta(  double costo, int duracion, String descripcion) {
        this.costo = costo;
        this.duracion = duracion;
        this.descripcion = descripcion;
    }

    public int getRuta() {
        return ruta;
    }

    public void setRuta(int ruta) {
        this.ruta = ruta;
    }

    public int getEmbarque() {
        return embarque;
    }

    public void setEmbarque(int embarque) {
        this.embarque = embarque;
    }

    public int getLlegada() {
        return llegada;
    }

    public void setLlegada(int llegada) {
        this.llegada = llegada;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setCosto(String costo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
