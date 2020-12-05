/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDao;

import Config.Conexion;
import Interfaces.U01_CRUD_CUENTA;
import Modelo.U04_Cuenta;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel
 */
public class U01_CuentaDao implements U01_CRUD_CUENTA{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps,ps2;
    ResultSet rs;
    @Override
    public List login(U04_Cuenta cuenta) {
        ArrayList<U04_Cuenta> list = new ArrayList<>(); 
        String sql = "select cuenta_id, rol_id, usuario, contraseña from cuentas where usuario = ? and contraseña = ?";   
//        String sql = "select t1.cuenta_id, t1.rol_id, t1.usuario, t1.contraseña, t2.log_id from cuentas t1 inner join logeos t2"
//                + " on t1.cuenta_id = t2.cuenta_id where t1.usuario = ? and t1.contraseña = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, cuenta.getUsuario());
            ps.setString(2, cuenta.getContraseña());
            rs = ps.executeQuery();
            while(rs.next()){
                U04_Cuenta cuenta2 = new U04_Cuenta();
                cuenta2.setRol_id(rs.getInt("rol_id"));
                cuenta2.setCuenta_id(rs.getInt("cuenta_id"));
                cuenta2.setUsuario(rs.getString("usuario"));
                cuenta2.setContraseña(rs.getString("contraseña"));
//                cuenta2.setLog_id(rs.getInt("t2.log_id"));
                list.add(cuenta2);       
            }
//            
        } catch (Exception e) {
        }
        return list;
    }
    
    public List login_fallido(String usuario){
        ArrayList<U04_Cuenta> list = new ArrayList<>(); 
        String sql2 = "select t1.cuenta_id, t2.intento_fallido from cuentas t1 inner join logeos t2"
                + " on t1.cuenta_id = t2.cuenta_id where t1.usuario = ? and t2.log_id = (select max(log_id) from logeos)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql2);
            ps.setString(1, usuario);
            rs = ps.executeQuery();
            while(rs.next()){
                U04_Cuenta cuenta2 = new U04_Cuenta();
                cuenta2.setCuenta_id(rs.getInt("t1.cuenta_id"));
                cuenta2.setIntento_fallido(rs.getInt("t2.intento_fallido"));
                list.add(cuenta2);       
            }
 
        } catch (Exception e) {
        }
        return list;
    }
    
    public void logeos(int cuenta_id, int estado, String contraseña){
        String sql = "insert into logeos(cuenta_id, contraseña, estado, hora_inicio, dia_inicio) values(?,?,?, time(now()), date(now()))";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cuenta_id);
            ps.setString(2, contraseña);
            ps.setInt(3, estado);
            
            ps.executeUpdate();
        }catch(Exception e){
            
        }
    }
    
    public List consulta_log(int cuenta_id){
        ArrayList<U04_Cuenta> list = new ArrayList<>(); 
        String sql = "select log_id from logeos where cuenta_id = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cuenta_id);
            
            rs = ps.executeQuery();
            while(rs.next()){
                U04_Cuenta cuenta2 = new U04_Cuenta();
                cuenta2.setCuenta_id(rs.getInt("log_id"));
                list.add(cuenta2);       
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
   public void intento_fallido(int cuenta_id, int estado, int intento_fallido, String contraseña){
       String sql = "insert into logeos(cuenta_id, contraseña, estado, intento_fallido, hora_inicio, dia_inicio) values(?,?,?,?, time(now()), date(now()))";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cuenta_id);
            ps.setString(2, contraseña);
            ps.setInt(3, estado);
            ps.setInt(4, intento_fallido);
            
            ps.executeUpdate();
        }catch(Exception e){
            
        }
   }
   
   public void logout(int cuenta_id, int log_id){
       String sql = "update logeos set hora_fin = time(now()), dia_fin = date(now()) where cuenta_id = ? and log_id = ?";
       try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cuenta_id);
            ps.setInt(2, log_id);
            
            ps.executeUpdate();
        }catch(Exception e){
            
        }
   }
}
