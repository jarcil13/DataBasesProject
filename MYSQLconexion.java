import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;


class Conexion{
    public static void main(String[] args) {
        
            Connection con = null;
            String sURL = "jdbc:mysql://localhost:3306/sakila";
           try{ 
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           con = DriverManager.getConnection(sURL,"root","chana1234");
           PreparedStatement stmt = con.prepareStatement("SELECT first_name FROM actor")) {
          ResultSet rs = stmt.executeQuery();
 
         while (rs.next())
         System.out.println (rs.getString("first_name"));
 
        } 
        catch (SQLException sqle) { 
        System.out.println("Error en la ejecución:" + sqle.getErrorCode() + " " + sqle.getMessage());    
        }
    }
}