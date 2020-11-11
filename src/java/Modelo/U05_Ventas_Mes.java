package Modelo;




public class U05_Ventas_Mes {
    
    String mes;
    Float ventas;
    
   public U05_Ventas_Mes (){}

    public U05_Ventas_Mes(String Mes, Float ventas) {
        this.mes = Mes;
        this.ventas = ventas;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String Mes) {
        this.mes = Mes;
    }

    public Float getVentas() {
        return ventas;
    }

    public void setVentas(Float ventas) {
        this.ventas = ventas;
    }
   
   
    
    
}
