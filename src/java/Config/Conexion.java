/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author V330
 */
public class Conexion {
    Connection cn;

    public Conexion() {
        try {
            String url = "jdbc:mysql://localhost:3306/llama_bus?zeroDateTimeBehavior=convertToNull&useSSL=false&useTimezone=true&serverTimezone=UTC";
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(url, "root", "benjamin");

        } catch (Exception e) {
            System.out.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return cn;
    }
}
