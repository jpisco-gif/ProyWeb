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
    public List consultar_ruta(String origen, String destino, String fecha){
        ArrayList<U01_Ruta> list = new ArrayList<>();
        String sql = "select itinerario_id, fecha_salida, duracion, costo_ruta from itinerarios t1 inner join rutas t2 on t1.ruta_id = t2.ruta_id";
//        String sql = "select itinerario_id, t5.terminal_id, t2.embarque_id, t6.terminal_id,"
//                + " t2.llegada_id, date(fecha_salida) as fecha, time(fecha_salida) as hora,"
//                + " duracion, costo_ruta from itinerarios t1 \n" +
//            "inner join rutas t2 on t1.ruta_id = t2.ruta_id\n" +
//            "inner join llegadas t3 on t2.llegada_id = t3.llegada_id\n" +
//            "inner join embarques t4 on t2.embarque_id = t4.embarque_id\n" +
//            "inner join puertas t5 on t3.puerta_id = t5.puerta_id\n" +
//            "inner join puertas t6 on t4.puerta_id = t6.puerta_id";
//            //"where t5.terminal_id = 1 and t6.terminal_id = 4";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Ruta rutas = new U01_Ruta();
                rutas.setItinerarios_id(rs.getInt("itinerario_id"));
                rutas.setOrigen(origen);
                rutas.setDestino(destino);
                rutas.setFecha(fecha);
                rutas.setPuerta_embarque(rs.getInt("t2.embarque_id"));
                rutas.setPuerta_llegada(rs.getInt("t2.lledaga_id"));
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
        String sql = "select itinerario_id, fecha_salida,t2.llegada_id, duracion,  "
                + "costo_ruta from itinerarios as t1 inner join rutas as t2 on t1.ruta_id = t2.ruta_id";
                // "inner join llegadas as t3 on (t2.llegada_id = t3.llegada_id)";
//        String sql = "select itinerario_id, t5.terminal_id, t2.embarque_id, t6.terminal_id,"
//                + " t2.llegada_id, date(fecha_salida) as fecha, time(fecha_salida) as hora,"
//                + " duracion, costo_ruta from itinerarios t1 \n" +
//            "inner join rutas t2 on t1.ruta_id = t2.ruta_id\n" +
//            "inner join llegadas t3 on t2.llegada_id = t3.llegada_id\n" +
//            "inner join embarques t4 on t2.embarque_id = t4.embarque_id\n" +
//            "inner join puertas t5 on t3.puerta_id = t5.puerta_id\n" +
//            "inner join puertas t6 on t4.puerta_id = t6.puerta_id";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Ruta rutas = new U01_Ruta();
                rutas.setItinerarios_id(rs.getInt("itinerario_id"));
                rutas.setPuerta_llegada(rs.getInt("t2.llegada_id"));
                rutas.setDuracion(rs.getInt("duracion"));
                rutas.setFecha(rs.getString("fecha_salida"));
                rutas.setPrecio(rs.getDouble("costo_ruta"));
                list.add(rutas);
            }
        } catch (Exception e) {
        }
        return list;
    }

}
