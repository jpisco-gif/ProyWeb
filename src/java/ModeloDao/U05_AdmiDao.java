
package ModeloDao;

import Config.Conexion;
import Modelo.U05_Admi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.U05_CRUD_Admi;

public class U05_AdmiDao implements U05_CRUD_Admi{
    
Conexion cn=new Conexion();
Connection con;   
PreparedStatement ps;
ResultSet rs;
U05_Admi p=new U05_Admi();

    @Override
    public List listar() {
    ArrayList<U05_Admi> list=new ArrayList<>();
    String sql="SELECT a.cuenta_id,a.rol_id,a.usuario,a.contraseña,a.email,b.persona_id,b.nombres,b.apellido_paterno,b.apellido_materno,b.sexo,b.telefono,b.edad,b.documento_id,b.cod_documento\n" +
"FROM cuentas AS a  \n" +
"INNER JOIN personas AS b\n" +
"ON b.cuenta_id=a.cuenta_id\n" +
"WHERE a.rol_id=2";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                U05_Admi per=new U05_Admi();
                
                
                per.setCuenta_id(rs.getInt("cuenta_id"));
                per.setRol_id(rs.getInt("rol_id"));
                per.setUsuario(rs.getString("usuario"));
                per.setContraseña(rs.getString("contraseña"));
                per.setEmail(rs.getString("email"));
            
                
                per.setPersona_id(rs.getInt("persona_id"));
                per.setNombres(rs.getString("nombres"));
                per.setApellido_paterno(rs.getString("apellido_paterno"));
                per.setApellido_materno(rs.getString("apellido_materno"));
                per.setSexo(rs.getString("sexo"));
                per.setTelefono(rs.getString("telefono"));
                per.setEdad(rs.getInt("edad"));
                per.setDocumento_id(rs.getInt("documento_id"));
                per.setPersona_id(rs.getInt("persona_id"));
                per.setCod_documento(rs.getString("cod_documento"));
                
                list.add(per);
                
            }
        } catch (Exception e) {
        }
    return list;
    
    }
    
     public List listar2() {
    ArrayList<U05_Admi> list=new ArrayList<>();
    String sql="SELECT * FROM cuentas";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                U05_Admi per=new U05_Admi();
                
                
                per.setCuenta_id(rs.getInt("cuenta_id"));
                per.setRol_id(rs.getInt("rol_id"));
                per.setUsuario(rs.getString("usuario"));
                per.setContraseña(rs.getString("contraseña"));
                per.setEmail(rs.getString("email"));
            
                
                
                
                list.add(per);
                
            }
        } catch (Exception e) {
        }
    return list;
    
    }

    @Override
    public U05_Admi list(int cuenta_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(U05_Admi per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add2(U05_Admi per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(U05_Admi per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit2(U05_Admi per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int cuenta_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
