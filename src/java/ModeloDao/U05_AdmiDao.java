
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
    

    @Override
    public U05_Admi list(int cuenta_id) {
        
        
        String sql="SELECT a.cuenta_id,a.rol_id,a.usuario,a.contraseña,a.email,b.persona_id,b.nombres,b.apellido_paterno,b.apellido_materno,b.sexo,b.telefono,b.edad,b.documento_id,b.cod_documento\n" +
        "FROM cuentas AS a  \n" +
        "INNER JOIN personas AS b\n" +
        "ON b.cuenta_id=a.cuenta_id\n" +
        "WHERE a.rol_id=2 AND a.cuenta_id="+cuenta_id;    
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
           
           
                p.setCuenta_id(rs.getInt("cuenta_id"));
                p.setRol_id(rs.getInt("rol_id"));
                p.setUsuario(rs.getString("usuario"));
                p.setContraseña(rs.getString("contraseña"));
                p.setEmail(rs.getString("email"));
               
                
                p.setPersona_id(rs.getInt("persona_id"));
                p.setNombres(rs.getString("nombres"));
                p.setApellido_paterno(rs.getString("apellido_paterno"));
                p.setApellido_materno(rs.getString("apellido_materno"));
                p.setSexo(rs.getString("sexo"));
                p.setTelefono(rs.getString("telefono"));
                p.setEdad(rs.getInt("edad"));
                p.setDocumento_id(rs.getInt("documento_id"));
                p.setPersona_id(rs.getInt("persona_id"));
                p.setCod_documento(rs.getString("cod_documento"));
            
            }
        } catch (Exception e) {
        }
        return p;
        
        
        
        
    }

    @Override
    public boolean add(U05_Admi per) {
        
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement("INSERT INTO cuentas(rol_id,usuario,contraseña,email) VALUES (2,?,?,?)");
            
            ps.setString(1, per.getUsuario());
            ps.setString(2, per.getContraseña());
            ps.setString(3, per.getEmail());
            
            ps.executeUpdate();

        } catch (Exception e) {
        }
        return false;
        
        
        
    }

    @Override
    public boolean add2(U05_Admi per) {
        
        
        try {
            con=cn.getConnection();
            
            ps=con.prepareStatement("INSERT INTO personas(nombres,apellido_paterno,apellido_materno,sexo,telefono,edad,documento_id,cod_documento,cuenta_id) VALUES (?,?,?,?,?,?,1,?,(SELECT cuenta_id FROM cuentas ORDER by cuenta_id DESC LIMIT 1))");

            
            
            ps.setString(1, per.getNombres());
            ps.setString(2, per.getApellido_paterno());
            ps.setString(3, per.getApellido_materno());
            ps.setString(4, per.getSexo());
            ps.setString(5, per.getTelefono());
            ps.setInt(6, per.getEdad());
            ps.setString(7, per.getCod_documento());
            
            ps.executeUpdate();



        } catch (Exception e) {
        }
        return false;
        
        
    }

    @Override
    public boolean edit(U05_Admi per) {
        
        
        String sql="update cuentas set usuario='"+per.getUsuario()+"',contraseña='"+per.getContraseña()+"',email='"+per.getEmail()+"'where cuenta_id="+per.getCuenta_id();
        try {
            con=cn.getConnection();
            
            ps=con.prepareStatement(sql);
            System.out.println(sql);
            System.out.println(per.getCuenta_id());
            
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
        
    }

    @Override
    public boolean edit2(U05_Admi per) {
        
        
        String sql="UPDATE personas SET nombres='"+per.getNombres()+"',apellido_paterno='"+per.getApellido_paterno()+"',apellido_materno='"+per.getApellido_materno()+"',sexo='"+per.getSexo()+"',edad="+per.getEdad()+",cod_documento='"+per.getCod_documento()+"' WHERE cuenta_id="+per.getCuenta_id();
        try {
            con=cn.getConnection();
            
            ps=con.prepareStatement(sql);
            System.out.println(sql);
            System.out.println(per.getCuenta_id());
            
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
        
    }

    @Override
    public boolean eliminar(int cuenta_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
