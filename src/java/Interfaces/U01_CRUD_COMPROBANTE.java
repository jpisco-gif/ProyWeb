/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.U01_Comprobante;
import java.util.List;

/**
 *
 * @author Manuel
 */
public interface U01_CRUD_COMPROBANTE {
    public boolean guardar_pasaje(U01_Comprobante comp);
    public List mostrar_pasaje(int cuenta_id);
}