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
    
    public void go() throws FileNotFoundException, IOException{
        try {
            info();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(LoadPDFMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String mes  = null;
            String year  = null;
            String dias_consumo  = null;
            String consumo_aqueduct  = null;
            String consumo_alcantarillado  = null;
            String consumo_energia = null;
            String aqueduct_fixed_charge = null;
            String subsidio_aqueduct;
            String UC_aqueduct  = null;
            String total_aqueduct  = null;
            String alcantarillado_fixed_charge  = null;
            String subsidio_alcantarillado  = null;
            String UC_alcantarillado  = null;
            String total_alcantarillado  = null;
            String subsidio_energy  = null;
            String UC_energy  = null;
            String total_energy  = null;
            String contrato  = null;
            String total_bill  = null;
            String coll_Date  = null;
            String difernecia_gas  = null;
            String consumo_M3_gas  = null;
            String consumo_KWH_gas  = null;
            String gas_fixed_charge  = null;
            String UC_gas  = null;
            String total_gas  = null;
            
            FileReader in = new FileReader("factura.txt");
            BufferedReader br = new BufferedReader(in);
            String x = br.readLine();
            int cont = 0;
            while(x != null) {
                int length = x.length();
                ++cont;
                switch(cont){
                   case 1:
                   mes = x.substring(4); 
                   break;

                   case 2:
                   year = x.substring(4);
                   break;
                
                   case 3:
                   dias_consumo = x.substring(16); 
                   break;
                
                   case 4:
                   consumo_aqueduct = x.substring(35); 
                   consumo_alcantarillado = x.substring(35);
                   break;
                
                   case 5:
                    consumo_energia = x.substring(16);
                   break;
                
                   case 6:
                   aqueduct_fixed_charge = x.substring(21);
                   break;
                 
                   case 7:
                   subsidio_aqueduct = x.substring(20);
                   break;
                
                   case 8:
                    UC_aqueduct = x.substring(25, length - 1);
                    break;
                    
                   case 9:
                       total_aqueduct = x.substring(16);
                    break;
                       
                   case 10:
                       alcantarillado_fixed_charge = x.substring(26);
                    break;
                    
                   case 11:
                       subsidio_alcantarillado = x.substring(25);
                    break;
                    
                   case 12:
                       UC_alcantarillado = x.substring(30, length -1);
                    break;
                    
                   case 13:
                       total_alcantarillado = x.substring(21);
                    break;
                    
                   case 14:
                       subsidio_energy = x.substring(18);
                    break;
                    
                   case 15:
                       UC_energy = x.substring(23,length-1);
                    break;
                    
                   case 16:
                       total_energy = x.substring(14);
                    break;
                    
                   case 17:
                       contrato = x.substring(9);
                    break;
                    
                   case 18:
                       total_bill = x.substring(15);
                    break;
                    
                   case 19:
                       coll_Date = x.substring(17);
                    break;
                    
                   case 20:
                       difernecia_gas = x.substring(18);
                    break;
                    
                   case 21:
                       consumo_M3_gas = x.substring(15);
                    break;
                    
                   case 22:
                       consumo_KWH_gas = x.substring(16);
                    break;
                    
                   case 23:
                       gas_fixed_charge = x.substring(15);
                    break;
                    
                   case 24:
                       UC_gas = x.substring(19, length -1);
                    break;
                    
                   case 25:
                       total_gas = x.substring(10);
                    break;       
                }
            
                x = br.readLine();
            }
            br.close();
            
            //Creacion de id del const_energy
            String id_const_energy = auto(11);
            System.out.println(id_const_energy);
            //Ingreso de Cons_energy
            this.update("persona","'9876','vbn','reedgf','jfgdg'");
            //this.update("INSERT INTO Const_energy VALUES ('"+ id_const_energy+"','0')");
            //Creacon del id del const_aqueduct
            String id_const_aqueduct = auto(12);
            //hacer carga de const_aqueduct
            this.update("Const_aqueduct","'" + id_const_aqueduct + "','" + aqueduct_fixed_charge + "'");
            
            
        }   
        catch (SQLException ex) {
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
            try (FileWriter fw = new FileWriter("consecutivo.txt"); BufferedWriter bw = new BufferedWriter(fw)) {
                bw.write(Integer.toString(consecutivo));
            }

        } catch (IOException ex) {
            Logger.getLogger(LoadPDFMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void info() throws FileNotFoundException{
      PrintStream ps = new PrintStream(new FileOutputStream("factura.txt"));
      int length = PDF.length;
      
      ps.print("Mes " + PDF[0] + "\n" + "Año " + PDF[2]);
      
      int consumption = 0;
      int surcharge = 0; //This one is to know the surchage of every component
      int unitary = 0; //This one is to know sewerage and aqueduct consumption
      int days = 0; //this variable is to know consumption days 
      boolean contract = false;
      boolean energy = false;
       //ESTE ES EL IF. EL ARREGLO A USAR ES PALABRASFINAL 
      for(int i = 0; i < length; ++i){
        if(i < length - 3) {
          if(PDF[i].equals("Total")) {
            if(PDF[i + 1].equals("Acueducto:")) ps.print("\nTotal acueducto " + PDF[i + 3]);
            

            if(PDF[i + 1].equals("Energía:")) ps.print("\nTotal energia " + PDF[i + 3]);
            
            
            if(PDF[i + 1].equals("Alcantarillado:")) ps.print("\nTotal alcantarillado " + PDF[i + 3]);
            

            if(PDF[i + 1].equals("Gas:")) ps.print("\nTotal gas " + PDF[i + 3]);
            
          }

          if(PDF[i].equals("Consumo") && PDF[i + 1].equals("KWH")) ps.print("\nConsumo energia " + PDF[i + 2]);

          //ps.print(PDF[i] + " ");
        }

        if(i < length - 1) {
          if(i > 0) {
            if(PDF[i].equalsIgnoreCase("consumo") && !PDF[i + 1].equals("KWH")) {
              ++consumption;
              if(consumption == 3) ps.print("\nConsumo acueducto y alcantarillado " + PDF[i + 1]);
            }

            if(PDF[i].equals("Días")) {
              ++days;
              if(days == 1) ps.print("\nDías de consumo " + PDF[i - 1]);
            }

            if(PDF[i].equals("Diferencia") && PDF[i + 1].equals("M3")) ps.print("\nDiferencia gas M3 " + PDF[i - 1]);
          }

          if(PDF[i].equalsIgnoreCase("recargo")) {
            ++surcharge;
            if(surcharge == 1) ps.print("\nFecha de recaudo " + PDF[i + 1]);
          }
          
          if(PDF[i].equals("Año")) ps.print("\nTotal factura " + PDF[i + 1]);

          if(PDF[i].equals("Contrato:") && !contract) {
            contract = true;
            ps.print("\nContrato " + PDF[i + 1]);
          }

          if(PDF[i].equals("Alcantarillado") && PDF[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 2 && j > 0) {
              if(PDF[j].equals("Subsidio")) {
                ps.print("\nCargo fijo alcantarillado " + PDF[j - 1]);
                ps.print("\nSubsidio alcantarillado " + PDF[j + 2]);
                break; 
              }
              ++j;
            }
          }

          if(PDF[i].equals("Acueducto") && PDF[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 2 && j > 0) {
              if(PDF[j].equals("Subsidio")) {
                ps.print("\nCargo fijo acueducto " + PDF[j - 1]);
                ps.print("\nSubsidio acueducto " + PDF[j + 2]);
                break; 
              }
              ++j;
            }
          }

          if(PDF[i].equals("Energía") && PDF[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 2) {
              if(PDF[j].equals("Subsidio")) {
                ps.print("\nSubsidio energia " + PDF[j + 2]);
                break; 
              }
              ++j;
            }
          }

          if(PDF[i].equals("Gas") && PDF[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 3){
              if(PDF[j].equals("Cargo") && PDF[j + 1].equals("fijo")) {
                j += 3;
                ps.print("\nCargo fijo gas " + PDF[j]);
                break;
              }
              ++j;
            }
          }
        }

        if(i < length - 5) {
          if(PDF[i].equals("Costo") && PDF[i + 1].equals("Valor") && PDF[i + 2].equals("Consumo")) {
            ++unitary;
            if(unitary == 1) {
              i += 5;
              ps.print("\nCosto unitario acueducto " + PDF[i]); 
            }

            if(unitary == 2) {
              i += 5;
              ps.print("\nCosto unitario alcantarillado " + PDF[i]); 
            }

            if(unitary == 3) {
              i += 5;
              ps.print("\nCosto unitario gas " + PDF[i]); 
            }
          }

          if(PDF[i].equals("Energía") && PDF[i + 1].equals("activa") && !energy) {
            energy = true;
            i += 4;
            ps.print("\nCosto unitario energia " + PDF[i]); 
          }

          if(PDF[i].equals("consum")) {
            ps.print("\nConsumo gas m3 " + PDF[i + 1]); 
            i += 4;
            ps.print("\nConsumo gas KWH " + PDF[i]); 
          }
        }
        
      }
      
      ps.close();
    }
    
    
}
