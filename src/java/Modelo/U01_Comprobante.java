
package Modelo;

public class U01_Comprobante {
    private String tipo_doc;
    private String numdoc;
    private String nombre;
    private String apepat;
    private String apemat;
    private int edad;
    private String sexo;
    private int telefono;
    private String correo;
    private int num_asiento;
    private String usuario_id;
    private double precio;
    private int itinerario_id;
    private int estado_pago;

    public U01_Comprobante() {
    }

    public U01_Comprobante(String tipo_doc, String numdoc, String nombre, String apepat, String apemat, int edad, String sexo, int telefono, String correo, int num_asiento, String usuario_id, double precio, int itinerario_id, int estado_pago) {
        this.tipo_doc = tipo_doc;
        this.numdoc = numdoc;
        this.nombre = nombre;
        this.apepat = apepat;
        this.apemat = apemat;
        this.edad = edad;
        this.sexo = sexo;
        this.telefono = telefono;
        this.correo = correo;
        this.num_asiento = num_asiento;
        this.usuario_id = usuario_id;
        this.precio = precio;
        this.itinerario_id = itinerario_id;
        this.estado_pago = estado_pago;
    }

    public int getEstado_pago() {
        return estado_pago;
    }

    public void setEstado_pago(int estado_pago) {
        this.estado_pago = estado_pago;
    }

    

    public int getItinerario_id() {
        return itinerario_id;
    }

    public void setItinerario_id(int itinerario_id) {
        this.itinerario_id = itinerario_id;
    }

    

    public String getTipo_doc() {
        return tipo_doc;
    }

    public void setTipo_doc(String tipo_doc) {
        this.tipo_doc = tipo_doc;
    }

    public String getNumdoc() {
        return numdoc;
    }

    public void setNumdoc(String numdoc) {
        this.numdoc = numdoc;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getApemat() {
        return apemat;
    }

    public void setApemat(String apemat) {
        this.apemat = apemat;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getNum_asiento() {
        return num_asiento;
    }

    public void setNum_asiento(int num_asiento) {
        this.num_asiento = num_asiento;
    }

    public String getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(String usuario_id) {
        this.usuario_id = usuario_id;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    
}
