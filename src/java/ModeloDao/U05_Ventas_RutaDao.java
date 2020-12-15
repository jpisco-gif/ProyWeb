
package ModeloDao;

import Interfaces.U05_CRUD_Ventas_Ruta;
import Config.Conexion;
import Modelo.U05_Ventas_Ruta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class U05_Ventas_RutaDao implements U05_CRUD_Ventas_Ruta {
    
Conexion cn=new Conexion();
Connection con;   
PreparedStatement ps;
ResultSet rs;
U05_Ventas_Ruta p=new U05_Ventas_Ruta();

    @Override
    public List listar() {
        
        ArrayList<U05_Ventas_Ruta> list=new ArrayList<>();
         String sql="SELECT a.descripcion AS ruta , SUM(c.monto) AS ventas , MONTHNAME(b.fecha_salida) AS mes \n" +
"FROM rutas AS a \n" +
"INNER JOIN itinerarios AS b \n" +
"ON a.ruta_id=b.ruta_id\n" +
"INNER JOIN comprobantes AS c \n" +
"ON b.itinerario_id=c.itinerario_id\n" +
"GROUP BY a.ruta_id\n" +
"ORDER BY (SUM(c.monto)) DESC\n" +
"LIMIT 7";
         
         try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                U05_Ventas_Ruta per=new U05_Ventas_Ruta();
                
              
                per.setRuta(rs.getString("ruta"));
                per.setVentas(rs.getFloat("ventas"));
                per.setMes(rs.getString("mes"));
                
                list.add(per);
                
            }
        } catch (Exception e) {
        }
         
        return list;
        
    }


    
}
