/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDao;

import Config.Conexion;
import Interfaces.U01_CRUD_RUTA;
import Modelo.U01_Ruta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author V330
 */
public class U01_RutasDao implements U01_CRUD_RUTA{
     Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public List consultar_ruta(int origen, int destino, String fecha){
        ArrayList<U01_Ruta> list = new ArrayList<>();
        String sql = "select itinerario_id, t5.terminal_id, (select ciudad from terminales where terminal_id = t5.terminal_id)"
                + " as destino,t2.embarque_id, t6.terminal_id, (select ciudad from terminales where terminal_id = t6.terminal_id) as origen,"
                + " t2.llegada_id, date(fecha_salida) as fecha, time(fecha_salida) as hora,"
                + " duracion, costo_ruta from itinerarios t1 \n" +
            "inner join rutas t2 on t1.ruta_id = t2.ruta_id\n" +
            "inner join llegadas t3 on t2.llegada_id = t3.llegada_id\n" +
            "inner join embarques t4 on t2.embarque_id = t4.embarque_id\n" +
            "inner join puertas t5 on t3.puerta_id = t5.puerta_id\n" +
            "inner join puertas t6 on t4.puerta_id = t6.puerta_id "
                + "where t6.terminal_id = ? and t5.terminal_id = ? and date(fecha_salida) = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, origen);
            ps.setInt(2, destino);
            ps.setString(3, fecha);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Ruta rutas = new U01_Ruta();
                rutas.setItinerarios_id(rs.getInt("itinerario_id"));
                rutas.setId_origen(rs.getInt("t6.terminal_id"));
                rutas.setOrigen(rs.getString("origen"));
                rutas.setPuerta_embarque(rs.getInt("t2.embarque_id"));
                rutas.setId_destino(rs.getInt("t5.terminal_id"));
                rutas.setDestino(rs.getString("destino"));    
                rutas.setPuerta_llegada(rs.getInt("t2.llegada_id"));   
                rutas.setDuracion(rs.getInt("duracion"));
                rutas.setFecha(rs.getString("fecha"));
                rutas.setHora(rs.getString("hora"));
                rutas.setPrecio(rs.getDouble("costo_ruta"));
                
                list.add(rutas);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public List consultar_todos() {
        ArrayList<U01_Ruta> list = new ArrayList<>();
                
        String sql = "select itinerario_id, t5.terminal_id, (select ciudad from terminales where terminal_id = t5.terminal_id)"
                + " as destino,t2.embarque_id, t6.terminal_id, (select ciudad from terminales where terminal_id = t6.terminal_id) as origen,"
                + " t2.llegada_id, date(fecha_salida) as fecha, time(fecha_salida) as hora,"
                + " duracion, costo_ruta from itinerarios t1 \n" +
            "inner join rutas t2 on t1.ruta_id = t2.ruta_id\n" +
            "inner join llegadas t3 on t2.llegada_id = t3.llegada_id\n" +
            "inner join embarques t4 on t2.embarque_id = t4.embarque_id\n" +
            "inner join puertas t5 on t3.puerta_id = t5.puerta_id\n" +
            "inner join puertas t6 on t4.puerta_id = t6.puerta_id";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Ruta rutas = new U01_Ruta();
                rutas.setItinerarios_id(rs.getInt("itinerario_id"));
                rutas.setId_origen(rs.getInt("t6.terminal_id"));
                rutas.setOrigen(rs.getString("origen"));
                rutas.setPuerta_embarque(rs.getInt("t2.embarque_id"));
                rutas.setId_destino(rs.getInt("t5.terminal_id"));
                rutas.setDestino(rs.getString("destino"));    
                rutas.setPuerta_llegada(rs.getInt("t2.llegada_id"));   
                rutas.setDuracion(rs.getInt("duracion"));
                rutas.setFecha(rs.getString("fecha"));
                rutas.setHora(rs.getString("hora"));  
                rutas.setPrecio(rs.getDouble("costo_ruta"));

                list.add(rutas);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public List terminales() {
        ArrayList<U01_Ruta> list = new ArrayList<>();
        String sql = "select terminal_id, ciudad from terminales";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Ruta rutas = new U01_Ruta();
                rutas.setId_origen(rs.getInt("terminal_id"));
                rutas.setOrigen(rs.getString("ciudad"));
                list.add(rutas);
            }
        } catch (Exception e) {
        }
        return list;
    }

}
