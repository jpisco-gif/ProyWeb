package ModeloDao;

import Config.Conexion;
import Interfaces.U05_CRUD_Rendimiento;
import Modelo.U05_Rendimiento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class U05_RendimientoDao implements U05_CRUD_Rendimiento {
    
    
    Conexion cn=new Conexion();
    Connection con;   
    PreparedStatement ps;
    ResultSet rs;
    U05_Rendimiento p=new U05_Rendimiento();

    @Override
    public List listar() {
        ArrayList<U05_Rendimiento> list=new ArrayList<>();
        String sql="SELECT a.rendimiento_id , a.terminal_id , b.ciudad ,  a.puntuacion , a.incidencias  ,a.fecha, MONTHNAME(a.fecha) AS mes\n" +
"FROM rendimiento AS a \n" +
"INNER JOIN terminales AS b\n" +
"ON a.terminal_id=b.terminal_id\n" +
"ORDER BY A.rendimiento_id ASC";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            
            
            while(rs.next()){
                
                U05_Rendimiento per=new U05_Rendimiento();
                
                
                per.setRendimiento_id(rs.getInt("rendimiento_id"));
                per.setTerminal_id(rs.getInt("terminal_id"));
                per.setCiudad(rs.getString("ciudad"));
                per.setPuntuacion(rs.getInt("puntuacion"));
                per.setIncidencias(rs.getInt("incidencias"));
                per.setMes(rs.getString("mes"));
                
                list.add(per);
                System.out.print("SI LLEGA HASTA AQUI");
                
                
                
            }
            
        } catch (Exception e) {
        }
        
        
    return list;
        
        
        
    }

    @Override
    public U05_Rendimiento list(int rendimiento_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(U05_Rendimiento per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(U05_Rendimiento per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
