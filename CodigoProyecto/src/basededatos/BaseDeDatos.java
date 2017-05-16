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
     protected Connection con;
    //implementar conexion a mysql
    public BaseDeDatos() {
        String sURL = "jdbc:mysql://localhost:3306/proyecto";
         try {
             Class.forName("com.mysql.jdbc.Driver").newInstance();
         } catch (InstantiationException | IllegalAccessException | ClassNotFoundException ex) {
             Logger.getLogger(BaseDeDatos.class.getName()).log(Level.SEVERE, null, ex);
         }
         try {
             con = (Connection) DriverManager.getConnection(sURL,"root","WMac2010*");
         } catch (SQLException ex) {
             Logger.getLogger(BaseDeDatos.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
    
    public ResultSet peticion(String consulta) throws SQLException{ 
         return con.prepareStatement(consulta).executeQuery();
    }    
    
    public boolean update(String tabla, String consulta) throws SQLException{
      
        if(tabla.startsWith("Const")){ //verifcamos si vamos hacer un update en un tabla ConsT
            if(tabla.equals("Const_gas")){
                if(consulta.split(",").length > 3){
                String[] arr = consulta.split(",");
                arr[1] += arr[2];
                consulta = arr[0] + "," + arr[1] + "," + arr[3]; 
                }
            }
            else if(consulta.split(",").length > 2 ){ //si el numero de "," superna la esperada
                String[] arr = consulta.split(",");
                arr[1] += arr[2];
                consulta = arr[0] + "," + arr[1];
             }
        }
        else if(tabla.startsWith("I") || tabla.startsWith("Tele")){
            if(consulta.split(",").length > 3) {
               String[] arr = consulta.split(",");
                arr[2] += arr[3];
                consulta = arr[0] + "," + arr[1] + "," + arr[2];
            }
        }        
        return con.prepareStatement("INSERT INTO " +tabla + " VALUES(" + consulta+")").execute();
    }
    
    public Connection getConnection(){
        return this.con;
    }
    
  
}
