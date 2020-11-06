/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import java.util.List;
import Modelo.U03A_Encomienda;

/**
 *
 * @author V330
 */
public interface U03A_CRUDEncomienda {
    public List listar();
    public U03A_Encomienda list(int id);
    public boolean add(U03A_Encomienda u);
    public boolean edit(U03A_Encomienda en);
    public boolean delete(int id);
}
