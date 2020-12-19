
package Modelo;

/**
 *
 * @author V330
 */
public class U02_Ruta {
    int ruta ;
    int embarque ;
    String nomEmbarque;
    int llegada ; 
    String nomLlegada;
    double costo ; 
    int duracion ; 
    String descripcion ;

    public U02_Ruta() {
    }

    public U02_Ruta(int ruta, int embarque, String nomEmbarque, int llegada, String nomLlegada, double costo, int duracion, String descripcion) {
        this.ruta = ruta;
        this.embarque = embarque;
        this.nomEmbarque = nomEmbarque;
        this.llegada = llegada;
        this.nomLlegada = nomLlegada;
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

    public String getNomEmbarque() {
        return nomEmbarque;
    }

    public void setNomEmbarque(String nomEmbarque) {
        this.nomEmbarque = nomEmbarque;
    }

    public int getLlegada() {
        return llegada;
    }

    public void setLlegada(int llegada) {
        this.llegada = llegada;
    }

    public String getNomLlegada() {
        return nomLlegada;
    }

    public void setNomLlegada(String nomLlegada) {
        this.nomLlegada = nomLlegada;
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

    
}
