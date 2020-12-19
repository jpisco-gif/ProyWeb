/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDao;

import Config.Conexion;
import Interfaces.U02_CRUD_RUTA;
import Modelo.U02_Ruta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author V330
 */
public class U02_RutasDao implements U02_CRUD_RUTA {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    U02_Ruta p = new U02_Ruta();

    @Override
    public List listar() {
        ArrayList<U02_Ruta> list = new ArrayList<>();
        String sql = "SELECT a.ruta_id,d.embarque_id,e.llegada_id, h.ciudad AS nomem , i.ciudad AS nomlle,`costo_ruta`,`duracion`,`descripcion` FROM rutas AS a INNER JOIN itinerarios AS b ON a.ruta_id=b.ruta_id INNER JOIN comprobantes AS c ON b.itinerario_id=c.itinerario_id  INNER JOIN embarques AS d ON a.embarque_id=d.embarque_id\n"
                + "INNER JOIN llegadas AS e  \n"
                + "ON a.llegada_id=e.llegada_id\n"
                + "INNER JOIN puertas AS f \n"
                + "ON d.puerta_id=f.puerta_id \n"
                + "INNER JOIN puertas AS g \n"
                + "ON e.puerta_id=g.puerta_id\n"
                + "INNER JOIN terminales AS h \n"
                + "ON f.terminal_id=h.terminal_id\n"
                + "INNER JOIN terminales AS i\n"
                + "ON g.terminal_id=i.terminal_id\n"
                + "GROUP BY a.ruta_id";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                U02_Ruta p = new U02_Ruta();
                p.setRuta(rs.getInt("ruta_id"));
                p.setEmbarque(rs.getInt("embarque_id"));
                p.setNomEmbarque(rs.getString("nomem"));
                p.setLlegada(rs.getInt("llegada_id"));
                p.setNomLlegada(rs.getString("nomlle"));
                p.setCosto(rs.getDouble("costo_ruta"));
                p.setDuracion(rs.getInt("duracion"));
                p.setDescripcion(rs.getString("descripcion"));
                list.add(p);

            }
        } catch (Exception e) {
        }
        return list;

    }

    @Override
    public U02_Ruta list(int ruta_id) {
        String sql = "SELECT a.ruta_id,d.embarque_id,e.llegada_id, h.ciudad AS nomem , i.ciudad AS nomlle,`costo_ruta`,`duracion`,`descripcion` FROM rutas AS a INNER JOIN itinerarios AS b ON a.ruta_id=b.ruta_id INNER JOIN comprobantes AS c ON b.itinerario_id=c.itinerario_id  INNER JOIN embarques AS d ON a.embarque_id=d.embarque_id\n"
                + "INNER JOIN llegadas AS e  \n"
                + "ON a.llegada_id=e.llegada_id\n"
                + "INNER JOIN puertas AS f \n"
                + "ON d.puerta_id=f.puerta_id \n"
                + "INNER JOIN puertas AS g \n"
                + "ON e.puerta_id=g.puerta_id\n"
                + "INNER JOIN terminales AS h \n"
                + "ON f.terminal_id=h.terminal_id\n"
                + "INNER JOIN terminales AS i\n"
                + "ON g.terminal_id=i.terminal_id\n"
                + " where a.ruta_id=?  GROUP BY a.ruta_id";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, ruta_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setNomEmbarque(rs.getString("nomem"));
                p.setNomLlegada(rs.getString("nomlle"));
                p.setRuta(rs.getInt("ruta_id"));
                p.setEmbarque(rs.getInt("embarque_id"));
                p.setLlegada(rs.getInt("llegada_id"));
                p.setCosto(rs.getDouble("costo_ruta"));
                p.setDuracion(rs.getInt("duracion"));
                p.setDescripcion(rs.getString("descripcion"));

            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(U02_Ruta per) {
        try {
            con = cn.getConnection();
            ps = con.prepareStatement("insert into rutas(ruta_id,embarque_id,llegada_id,costo_ruta,duracion,descripcion) values(?,?,?,?,?,?)");
            ps.setInt(1, per.getRuta());
            ps.setInt(2, per.getEmbarque());
            ps.setInt(3, per.getLlegada());
            ps.setDouble(4, per.getCosto());
            ps.setInt(5, per.getDuracion());
            ps.setString(6, per.getDescripcion());
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        return true;
    }

    @Override
    public boolean edit(U02_Ruta per) {
        String sql = "update rutas set costo_ruta='" + per.getCosto() + "',duracion='" + per.getDuracion() + "' where ruta_id=" + per.getRuta();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int ruta_id) {
        String sql = "delete from rutas where ruta_id=" + ruta_id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
        }
        return false;
    }
}
