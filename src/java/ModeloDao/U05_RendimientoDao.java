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
        
         String sql="SELECT a.rendimiento_id , a.terminal_id , b.ciudad ,  a.puntuacion , a.incidencias  ,a.fecha, MONTHNAME(a.fecha) AS mes\n" +
"FROM rendimiento AS a \n" +
"INNER JOIN terminales AS b\n" +
"ON a.terminal_id=b.terminal_id\n" +
"WHERE a.rendimiento_id="+rendimiento_id;    
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
           
           
                p.setRendimiento_id(rs.getInt("rendimiento_id"));
                p.setTerminal_id(rs.getInt("terminal_id"));
                p.setCiudad(rs.getString("ciudad"));
                p.setPuntuacion(rs.getInt("puntuacion"));
                p.setIncidencias(rs.getInt("incidencias"));
                p.setMes(rs.getString("mes"));
            
            }
        } catch (Exception e) {
        }
        return p;
        
        
    }

    @Override
    public boolean add(U05_Rendimiento per) {
        
      try {
            con=cn.getConnection();
            ps=con.prepareStatement("INSERT INTO rendimiento (terminal_id,puntuacion,incidencias,fecha) VALUES	(?,?,?,(SELECT DATE(NOW())));");
            
            ps.setInt(1, per.getTerminal_id());
            ps.setInt(2, per.getPuntuacion());
            ps.setInt(3, per.getIncidencias());
            
            ps.executeUpdate();

        } catch (Exception e) {
        }
        return false;   
        
        
    }

    @Override
    public boolean edit(U05_Rendimiento per) {
        
        String sql="UPDATE rendimiento SET terminal_id="+per.getTerminal_id()+",puntuacion="+per.getPuntuacion()+",incidencias="+per.getIncidencias()+",fecha=(SELECT DATE(NOW())) WHERE rendimiento_id="+per.getRendimiento_id();
        
        try {
            con=cn.getConnection();
            
            ps=con.prepareStatement(sql);
            System.out.println(sql);
            System.out.println(per.getRendimiento_id());
            
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
