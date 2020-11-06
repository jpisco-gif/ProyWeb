
package Interfaces;

import Modelo.U05_Admi;
import java.util.List;

public interface U05_CRUD_Admi {
    
   public List listar();
   public List listar2();
   public U05_Admi list(int cuenta_id);
   public boolean add(U05_Admi per);
   public boolean add2(U05_Admi per);
   public boolean edit(U05_Admi per);
   public boolean edit2(U05_Admi per);
   public boolean eliminar(int cuenta_id);
    
}
