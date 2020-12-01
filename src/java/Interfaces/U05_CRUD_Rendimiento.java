
package Interfaces;

import Modelo.U05_Rendimiento;
import java.util.List;

public interface U05_CRUD_Rendimiento {
 
    
   public List listar();
   public U05_Rendimiento list(int rendimiento_id);
   public boolean add(U05_Rendimiento per);
   public boolean edit(U05_Rendimiento per);
 
}
