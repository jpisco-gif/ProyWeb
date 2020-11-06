/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.U01_Ruta;
import java.util.List;

/**
 *
 * @author V330
 */
public interface U01_CRUD_RUTA {
     public List consultar_ruta(String origen, String destino, String fecha);
     public List consultar_todos();
}
