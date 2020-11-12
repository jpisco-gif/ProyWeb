
package Modelo;


public class U05_Ventas_Clase {
    
    String clase;
    Float ventas;
    String mes;
    
    public U05_Ventas_Clase(){}

    public U05_Ventas_Clase(String clase, Float ventas, String mes) {
        this.clase = clase;
        this.ventas = ventas;
        this.mes = mes;
    }

    public String getClase() {
        return clase;
    }

    public void setClase(String clase) {
        this.clase = clase;
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
