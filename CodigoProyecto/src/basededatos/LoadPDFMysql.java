/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author juan
 */
public class LoadPDFMysql extends BaseDeDatos{

    private String[] PDF;
    
    public LoadPDFMysql(Reader read) {
      PDF = read.getPDF();
    }
    
    public void go(){
        try {
            this.peticion(""); // todos los carga de data
        } catch (SQLException ex) {
            Logger.getLogger(LoadPDFMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
