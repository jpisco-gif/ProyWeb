package Modelo;

public class U05_Rendimiento {
    
    int rendimiento_id;
    int terminal_id;
    String ciudad;
    int puntuacion;
    int incidencias;
    String mes;
    
    public U05_Rendimiento () {}

    public U05_Rendimiento(String ciudad, int puntuacion, int incidencias, String mes) {
        this.ciudad = ciudad;
        this.puntuacion = puntuacion;
        this.incidencias = incidencias;
        this.mes = mes;
    }

    public int getRendimiento_id() {
        return rendimiento_id;
    }

    public void setRendimiento_id(int rendimiento_id) {
        this.rendimiento_id = rendimiento_id;
    }

    public int getTerminal_id() {
        return terminal_id;
    }

    public void setTerminal_id(int terminal_id) {
        this.terminal_id = terminal_id;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public int getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }

    public int getIncidencias() {
        return incidencias;
    }

    public void setIncidencias(int incidencias) {
        this.incidencias = incidencias;
    }



    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

  
    
    
    
    
    
}
