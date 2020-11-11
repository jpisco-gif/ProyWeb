
package ModeloDao;

import Interfaces.U05_CRUD_Ventas_Clase;
import Config.Conexion;
import Modelo.U05_Ventas_Clase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class U05_Ventas_ClaseDao implements U05_CRUD_Ventas_Clase {
    
    Conexion cn=new Conexion();
    Connection con;   
    PreparedStatement ps;
    ResultSet rs;
    U05_Ventas_Clase p=new U05_Ventas_Clase();

    @Override
    public List listar() {
        
        ArrayList<U05_Ventas_Clase> list=new ArrayList<>();
         String sql="SELECT a.nom_clase AS clase ,SUM(c.monto) AS ventas ,MONTHNAME(d.fecha_salida) AS mes\n" +
                    "FROM clases AS a \n" +
                    "INNER JOIN asientos AS b \n" +
                    "ON a.clase_id=b.clase_id\n" +
                    "INNER JOIN comprobantes AS c \n" +
                    "ON b.asiento_id=c.asiento_id \n" +
                    "INNER JOIN itinerarios AS d \n" +
                    "ON c.itinerario_id=d.itinerario_id \n" +
                    "GROUP BY a.clase_id \n" +
                    "ORDER BY a.clase_id;";
         
         try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                U05_Ventas_Clase per=new U05_Ventas_Clase();
                
              
                per.setClase(rs.getString("clase"));
                per.setVentas(rs.getFloat("ventas"));
                per.setMes(rs.getString("mes"));
                
                list.add(per);
                
            }
        } catch (Exception e) {
        }
         
        return list;
        
    }
    
}
