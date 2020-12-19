  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDao;

import Config.Conexion;
import Interfaces.U01_CRUD_COMPROBANTE;
import Modelo.U01_Comprobante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel
 */
public class U01_ComprobanteDao implements U01_CRUD_COMPROBANTE{
Conexion cn = new Conexion();
Connection con;
PreparedStatement ps, ps2;
ResultSet rs;
U01_Comprobante comp = new U01_Comprobante();
    
    @Override
    public boolean guardar_pasaje(U01_Comprobante comp) {
        try {
            con=cn.getConnection();
            ps=con.prepareStatement("insert into personas(nombres, apellido_paterno, apellido_materno,sexo, telefono, edad, documento_id, cod_documento, cuenta_id) values(?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, comp.getNombre());
            ps.setString(2, comp.getApepat());
            ps.setString(3, comp.getApemat());
            ps.setString(4, comp.getSexo());
            ps.setInt(5, comp.getTelefono());
            ps.setInt(6, comp.getEdad());
            ps.setString(7, comp.getTipo_doc());
            ps.setString(8, comp.getNumdoc());
            ps.setInt(9, comp.getCuenta_id());//cuenta id
            ps.executeUpdate();

            ps=con.prepareStatement("select max(persona_id) from personas");
            
            ps=con.prepareStatement("insert into comprobantes (persona_id, cuenta_id, itinerario_id, asiento_id, monto, estado) values ((select max(persona_id)from personas),?,?,?,?,?)"); 
            ps.setInt(1, comp.getCuenta_id());
            ps.setInt(2, comp.getItinerario_id());
            ps.setInt(3, comp.getNum_asiento());        
            ps.setDouble(4, comp.getPrecio());
            ps.setInt(5, comp.getEstado_pago());
            ps.executeUpdate();
            
            ps=con.prepareStatement("update asientos as t1 inner join comprobantes as t2 on t1.asiento_id = t2.asiento_id set t1.estado = 1 where nom_asiento = ? and itinerario_id = ?");
            ps.setInt(1, comp.getNum_asiento());
            ps.setInt(2, comp.getItinerario_id());
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public List mostrar_pasaje(int cuenta_id) {
        ArrayList<U01_Comprobante> list = new ArrayList<>();
                
        String sql = "select t1.persona_id, nombres, apellido_paterno, apellido_materno, sexo, telefono, edad, documento_id, cod_documento, \n"
                + "t3.nom_asiento, t2.comprobante_id, t2.itinerario_id,t2.monto from personas t1 \n"
                + "inner join comprobantes t2 on t1.persona_id = t2.persona_id \n"
                +"inner join asientos t3 on t2.asiento_id = t3.asiento_id\n"
                + "where t2.cuenta_id = ? and t2.estado = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cuenta_id);
            ps.setInt(2, 0);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Comprobante comp = new U01_Comprobante();
                comp.setUsuario_id(rs.getString("t1.persona_id"));
                comp.setNombre(rs.getString("nombres"));
                comp.setApepat(rs.getString("apellido_paterno"));
                comp.setApemat(rs.getString("apellido_materno"));
                comp.setSexo(rs.getString("sexo"));
                comp.setTelefono(rs.getInt("telefono"));
                comp.setEdad(rs.getInt("edad"));
                comp.setNumdoc(rs.getString("cod_documento"));
                comp.setNum_asiento(rs.getInt("t3.nom_asiento"));
                comp.setComprobante_id(rs.getInt("t2.comprobante_id"));
                comp.setItinerario_id(rs.getInt("t2.itinerario_id"));
                comp.setPrecio(rs.getDouble("t2.monto"));
                list.add(comp);
            }
        } catch (Exception e) {
        }
        return list;
    
    }
    
    @Override
    public void eliminar_pasaje(int comprobante_id, int persona_id, int itinerario_id, int num_asiento){
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement("delete from comprobantes where comprobante_id = ? and persona_id = ?");
            ps.setInt(1, comprobante_id);
            ps.setInt(2, persona_id);
            ps.executeUpdate();
            
            ps = con.prepareStatement("delete from personas where persona_id = ?");
            ps.setInt(1, persona_id);
            ps.executeUpdate();
            
            ps = con.prepareStatement("update asientos t1 inner join comprobantes t2 on t1.asiento_id = t2.asiento_id set t1.estado = 0 where t2.itinerario_id = ? and nom_asiento = ?");
            ps.setInt(1, itinerario_id);
            ps.setInt(2, num_asiento);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    @Override
    public void pagar(int cuenta_id){
        try{
            con = cn.getConnection();
            ps = con.prepareStatement("update comprobantes set estado = 1 where cuenta_id = ?");
            ps.setInt(1, cuenta_id);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
    }
    
    @Override
    public void editarDatos(U01_Comprobante comp){
        try {
            con = cn.getConnection();
            ps = con.prepareStatement("update personas set nombres = ?, apellido_paterno = ?, apellido_materno = ?, sexo = ?, telefono = ?, edad = ?, documento_id = ?, cod_documento = ? where persona_id = ?");
            ps.setString(1, comp.getNombre());
            ps.setString(2, comp.getApepat());
            ps.setString(3, comp.getApemat());
            ps.setString(4, comp.getSexo());
            ps.setInt(5, comp.getTelefono());
            ps.setInt(6, comp.getEdad());
            ps.setString(7, comp.getTipo_doc());
            ps.setString(8, comp.getNumdoc());
            ps.setString(9, comp.getUsuario_id());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    @Override
    public List listar_pasajes(int cuenta_id){
        ArrayList<U01_Comprobante> list = new ArrayList<>();
                
        String sql = "select t1.cuenta_id, t1.persona_id, nombres, apellido_paterno,\n"
                + " apellido_materno, sexo, telefono, edad, documento_id, cod_documento,\n" +
                "t3.nom_asiento, t2.comprobante_id, t2.itinerario_id, \n"
                + "(select ciudad from terminales where terminal_id = t8.terminal_id) as origen,\n"
                + " (select ciudad from terminales where terminal_id = t9.terminal_id) as destino,\n"
                + " date(t4.fecha_salida) as fecha, time(t4.fecha_salida) as hora, t9.nom_puerta from personas t1\n" +
                "inner join comprobantes t2 on t1.persona_id = t2.persona_id\n" +
                "inner join asientos t3 on t2.asiento_id = t3.asiento_id\n" +
                "inner join itinerarios t4 on t2.itinerario_id = t4.itinerario_id\n" +
                "inner join rutas t5 on t4.ruta_id = t5.ruta_id\n" +
                "inner join llegadas t6 on t5.llegada_id = t6.llegada_id\n" +
                "inner join embarques t7 on t5.embarque_id = t7.embarque_id\n" +
                "inner join puertas t8 on t7.puerta_id = t8.puerta_id\n" +
                "inner join puertas t9 on t6.puerta_id = t9.puerta_id\n" +
                "where t1.cuenta_id = ? and t2.estado = ?";
       
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cuenta_id);
            ps.setInt(2, 1);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Comprobante comp = new U01_Comprobante();
                comp.setUsuario_id(rs.getString("t1.persona_id"));
                comp.setNombre(rs.getString("nombres"));
                comp.setApepat(rs.getString("apellido_paterno"));
                comp.setApemat(rs.getString("apellido_materno"));
                comp.setSexo(rs.getString("sexo"));
                comp.setTelefono(rs.getInt("telefono"));
                comp.setEdad(rs.getInt("edad"));
                comp.setNumdoc(rs.getString("cod_documento"));
                comp.setNum_asiento(rs.getInt("t3.nom_asiento"));
                comp.setComprobante_id(rs.getInt("t2.comprobante_id"));
                comp.setItinerario_id(rs.getInt("t2.itinerario_id"));
                comp.setOrigen(rs.getString("origen"));
                comp.setDestino(rs.getString("destino"));
                comp.setFecha(rs.getString("fecha"));
                comp.setHora(rs.getString("hora"));
                comp.setPuerta(rs.getString("nom_puerta"));
                list.add(comp);
            }
        } catch (Exception e) {
        }
        return list;
    }
}
