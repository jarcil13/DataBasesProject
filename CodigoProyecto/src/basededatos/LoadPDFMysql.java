/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.*;
import java.io.FileWriter;
import java.sql.ResultSet;

/**
 *
 * @author juan
 */
public class LoadPDFMysql extends BaseDeDatos{

    private String[] PDF;
    int consecutivo;
    
    public LoadPDFMysql(Reader read) {
      PDF = read.getPDF();
      consecutivo = getConsecutivo();
    }
    
    public void go(){
        try {
            this.update("INSERT INTO persona VALUES ('3','Wendy','estofuecon','lainterfaz')");
            for(String a: PDF){
              //  System.out.println(a);
            }
            // todos los carga de data
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(LoadPDFMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * para generación automatica 
     * 1 = E; 2 =A; 3=S; 4=G; 5=TL; 6=TV; 7=I
     * Se agrega un 1 adelante para asignar que es constate
    **/ 
    private String auto (int type){
        switch(type){
            case 1:
               return "E"+number(); 
            case 2:
                return "A"+number();
            case 3:
               return "S"+number();
            case 4:
                return "G"+number();
            case 5:
               return "TL"+number();
            case 6:
                return "TV"+number();
            case 7:
               return "I"+number();
            case 11:
                return "CE"+number();
            case 12:
               return "CA"+number();
            case 13:
                return "CS"+number();
            case 14:
               return "CG"+number();
            default: return "";
        }    
    }
    
    private String number(){
      consecutivo++;
      setConsecutivo();
     return Integer.toString(consecutivo);
     
    }
    
    private int getConsecutivo(){
        try{
        FileReader in = new FileReader("consecutivo.txt");
        BufferedReader br = new BufferedReader(in);
        String ret =  br.readLine();
        in.close();
        br.close();
        if(ret != null) return Integer.parseInt(ret);
        throw new Exception();
    }
    catch(Exception e){ }
        return 0;
    }
    
    private void setConsecutivo(){
        try {
            FileWriter fw = new FileWriter("consecutivo.txt");
	    BufferedWriter bw = new BufferedWriter(fw);
            bw.write(Integer.toString(consecutivo));
            bw.close();
            fw.close();

        } catch (IOException ex) {
            Logger.getLogger(LoadPDFMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
