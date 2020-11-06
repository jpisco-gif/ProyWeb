/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import java.util.List;
import Modelo.U02_Ruta;
/**
 *
 * @author V330
 */
public interface U02_CRUD_RUTA {
    public List listar();
   public U02_Ruta list(int rutas_id);
   public boolean add(U02_Ruta per);
   public boolean edit(U02_Ruta per);
   public boolean eliminar(int rutas_id);
}
