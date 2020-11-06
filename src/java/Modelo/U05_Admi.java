package Modelo;


public class U05_Admi {
    
    int cuenta_id;
    int rol_id;
    String usuario;
    String contraseña;
    String email;
    
    int persona_id;
    String nombres;
    String apellido_paterno;
    String apellido_materno;
    String sexo;
    String telefono;
    int edad;
    int documento_id;
    String cod_documento;
    
    public U05_Admi(){}

    public U05_Admi(String usuario, String contraseña, String email, String nombres, String apellido_paterno, String apellido_materno, String sexo, String telefono, int edad, String cod_documento) {
        this.usuario = usuario;
        this.contraseña = contraseña;
        this.email = email;
        this.nombres = nombres;
        this.apellido_paterno = apellido_paterno;
        this.apellido_materno = apellido_materno;
        this.sexo = sexo;
        this.telefono = telefono;
        this.edad = edad;
        this.cod_documento = cod_documento;
    }

    public int getCuenta_id() {
        return cuenta_id;
    }

    public void setCuenta_id(int cuenta_id) {
        this.cuenta_id = cuenta_id;
    }

    public int getRol_id() {
        return rol_id;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPersona_id() {
        return persona_id;
    }

    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_paterno) {
        this.apellido_paterno = apellido_paterno;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setApellido_materno(String apellido_materno) {
        this.apellido_materno = apellido_materno;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getDocumento_id() {
        return documento_id;
    }

    public void setDocumento_id(int documento_id) {
        this.documento_id = documento_id;
    }

    public String getCod_documento() {
        return cod_documento;
    }

    public void setCod_documento(String cod_documento) {
        this.cod_documento = cod_documento;
    }
    
    
    
}
