
package Modelo;



public class U05_Ventas_Ruta {
    
    String ruta;
    Float ventas;
    String mes;
    
    public  U05_Ventas_Ruta(){}

    public U05_Ventas_Ruta(String ruta, Float ventas, String mes) {
        this.ruta = ruta;
        this.ventas = ventas;
        this.mes = mes;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public Float getVentas() {
        return ventas;
    }

    public void setVentas(Float ventas) {
        this.ventas = ventas;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }
    
    
    
}
