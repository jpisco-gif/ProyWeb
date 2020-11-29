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
    ResultSet rs,rslog;
    String sql = "select cuenta_id, rol_id from cuentas where usuario = ? and contraseña = ?";
    String sql2 = "select * from  logeos where usuario=?";
    @Override
    public List login(U04_Cuenta cuenta) {
        ArrayList<U04_Cuenta> list = new ArrayList<>();
        int ins=0;
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, cuenta.getUsuario());
            ps.setString(2, cuenta.getContraseña()); 
            rs = ps.executeQuery();
            if(rs.next()){
                U04_Cuenta cuenta2 = new U04_Cuenta();
                cuenta2.setRol_id(rs.getInt("rol_id"));
                cuenta2.setCuenta_id(rs.getInt("cuenta_id"));
                list.add(cuenta2);
                
            }else
              {
                  ps2=con.prepareCall(sql2);
                  ps2.setString(1, cuenta.getUsuario());
                  rslog=ps2.executeQuery();
                  
                  if (rslog.next()) {
                      U04_Cuenta cuenta3= new U04_Cuenta();
                cuenta3.setIntento_fallido(rs.getInt("intento_fallido"));
                cuenta3.setLog_id(rs.getInt("log_id"));
                list.add(cuenta3);
                     if (cuenta3.getIntento_fallido()==3) {
                    System.out.println("Excediste el numero de intentos");
                } else {
                    ins=cuenta3.getIntento_fallido()+1;
                    ps2=con.prepareStatement("update logeos set intento_fallido="+ins+" where log_id"+cuenta3.getLog_id());
                    ps2.executeUpdate();
                    System.out.println("usuario y contraseña incorrectos");
                    
                }
                  } else {
                      
                  }
            }
            
            
            
        } catch (Exception e) {
        }
        return list;
    }
    
    
    
}
