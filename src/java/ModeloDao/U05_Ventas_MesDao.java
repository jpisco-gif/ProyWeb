
package ModeloDao;

import Interfaces.U05_CRUD_Ventas_Mes;
import Config.Conexion;
import Modelo.U05_Ventas_Mes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class U05_Ventas_MesDao implements U05_CRUD_Ventas_Mes {
    
Conexion cn=new Conexion();
Connection con;   
PreparedStatement ps;
ResultSet rs;
U05_Ventas_Mes p=new U05_Ventas_Mes();

    @Override
    public List listar() {
        
         ArrayList<U05_Ventas_Mes> list=new ArrayList<>();
         String sql="SELECT MONTHNAME(b.fecha_salida) AS mes,SUM(c.monto) AS ventas \n" +
                    "FROM rutas AS a \n" +
                    "INNER JOIN itinerarios AS b \n" +
                    "ON a.ruta_id=b.ruta_id\n" +
                    "INNER JOIN comprobantes AS c \n" +
                    "ON b.itinerario_id=c.itinerario_id\n" +
                    "GROUP BY MONTHNAME(b.fecha_salida)\n" +
                    "ORDER BY MONTHNAME(b.fecha_salida) ASC;";
         
         try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                U05_Ventas_Mes per=new U05_Ventas_Mes();
                
              
                per.setMes(rs.getString("mes"));
                per.setVentas(rs.getFloat("ventas"));
               
                list.add(per);
                
            }
        } catch (Exception e) {
        }
         
        return list;
         
         
        
    }
    
}
