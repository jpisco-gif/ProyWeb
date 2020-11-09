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
            ps.setInt(9, 1);//cuenta id
            ps.executeUpdate();

            ps=con.prepareStatement("insert into comprobantes (persona_id, cuenta_id, itinerario_id, asiento_id, monto, estado) values ((select max(persona_id)from personas),?,?,?,?,?)"); 
            ps.setInt(1, 1);//cuenta id
            ps.setInt(2, comp.getItinerario_id());
            ps.setInt(3, comp.getNum_asiento());        
            ps.setDouble(4, comp.getPrecio());
            ps.setInt(5, comp.getEstado_pago());
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return false;
    }
    
}
