/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;

/**
 *
 * @author María Arango
 */
public class BaseDeDatos extends JFrame {
     private Connection con;
     private int actualEnterprise;  
    //implementar conexion a mysql
    public BaseDeDatos() {
        String sURL = "jdbc:mysql://localhost:3306/proyecto";
         try {
             Class.forName("com.mysql.jdbc.Driver").newInstance();
         } catch (InstantiationException | IllegalAccessException | ClassNotFoundException ex) {
             Logger.getLogger(BaseDeDatos.class.getName()).log(Level.SEVERE, null, ex);
         }
         try {
             con = (Connection) DriverManager.getConnection(sURL,"root","chana1234");
         } catch (SQLException ex) {
             Logger.getLogger(BaseDeDatos.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
    
    public ResultSet peticion(String consulta) throws SQLException{ 
         return con.prepareStatement(consulta).executeQuery();
    }    
    
    public boolean update(String tabla, String consulta) throws SQLException{
         return con.prepareStatement("INSERT INTO " +tabla + " VALUES(" + consulta+")").execute();
    }
    
    public int getEnterprise(){
        return this.actualEnterprise;
    }

    public void setActualEnterprise(int actualEnterprise) {
        this.actualEnterprise = actualEnterprise;
    }
}
