package basededatos;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.tika.Tika;
import java.io.PrintStream;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.pdf.PDFParser;
import org.apache.tika.parser.pdf.PDFParserConfig;
import org.apache.tika.sax.BodyContentHandler;

import org.xml.sax.SAXException;
public class Reader1 { 
    
    public static void main(final String[] args) throws IOException,TikaException, SAXException {
     
      BodyContentHandler handler = new BodyContentHandler();
      Metadata metadata = new Metadata();
      FileInputStream inputstream = new FileInputStream(new File("/home/mariaarango/Documents/University/3rdSemester/BasesDeDatos/DataBasesProject/Bills/factura2.pdf"));
      ParseContext pcontext = new ParseContext();
     
      //parsing the document using PDF parser
      PDFParser pdfparser = new PDFParser(); 
      pdfparser.parse(inputstream, handler, metadata,pcontext);
      //se crea configuración
      PDFParserConfig config = new PDFParserConfig();
      // estoy puede ser configuraciones // config.;
      // se agrega configuración
      pdfparser.setPDFParserConfig(config);
      String[] tokens = handler.toString().split(" ");
   
      String[] palabras = new String[tokens.length*2];
      System.out.println(tokens.length*2);
      int indicepal = 0;
       for (String token : tokens) {
           String[] temp = token.split("\n");
          for (String temp1 : temp) {
              if (temp1 != null && !temp1.startsWith(" ") && !temp1.isEmpty()) {
                  palabras[indicepal] = temp1;
                  indicepal++;
              }
          }
      }
       //Se crea el arreglo final, agregnadole el anterior pero ignorando los null
      String[] palabrasFinal = new String[indicepal];
      System.arraycopy(palabras, 0, palabrasFinal, 0, indicepal); //Copia rara sin null de Netbeans
      
      aux(palabrasFinal);
        
       /**
      int i= 0;
       while(palabras[i] != null){
          System.out.println(palabras[i]);
          i++;
       }
       */
       
     //  System.out.println("Se ha encuentrado " + i + " palabras");
      //getting the content of the document
      //System.out.println("Contents of the PDF :" + handler.toString());
      
      //getting metadata of the document
     // System.out.println("Metadata of the PDF:");
     // String[] metadataNames = metadata.names();
      
      //for(String name : metadataNames) {
       //  System.out.println(name+ " : " + metadata.get(name));
      //}
   }
  
   public static void aux(String[] palabrasFinal) throws FileNotFoundException {
    PrintStream ps = new PrintStream(new FileOutputStream("factura.txt"));
      System.setOut(ps);
      int length = palabrasFinal.length;

      // for(int i = 0; i < length; ++i) {
      //   ps.print(palabrasFinal[i] + " ");
      // }
      
      ps.print("Mes " + palabrasFinal[0] + " Año " + palabrasFinal[2]);
      
      int consumption = 0;
      int surcharge = 0; //This one is to know the surchage of every component
      int unitary = 0; //This one is to know sewerage and aqueduct consumption
      int days = 0; //this variable is to know consumption days 
      boolean contract = false;
      boolean energy = false;
       //ESTE ES EL IF. EL ARREGLO A USAR ES PALABRASFINAL 
      for(int i = 0; i < length; ++i){
        if(i < length - 3) {
          if(palabrasFinal[i].equals("Total")) {
            if(palabrasFinal[i + 1].equals("Acueducto:")) ps.print("\nTotal acueducto " + palabrasFinal[i + 3]);
            

            if(palabrasFinal[i + 1].equals("Energía:")) ps.print("\nTotal energia " + palabrasFinal[i + 3]);
            
            
            if(palabrasFinal[i + 1].equals("Alcantarillado:")) ps.print("\nTotal alcantarillado " + palabrasFinal[i + 3]);
            

            if(palabrasFinal[i + 1].equals("Gas:")) ps.print("\nTotal gas " + palabrasFinal[i + 3]);
            
          }

          if(palabrasFinal[i].equals("Consumo") && palabrasFinal[i + 1].equals("KWH")) ps.print("\nConsumo energia " + palabrasFinal[i + 2]);

          //ps.print(palabrasFinal[i] + " ");
        }

        if(i < length - 1) {
          if(i > 0) {
            if(palabrasFinal[i].equalsIgnoreCase("consumo") && !palabrasFinal[i + 1].equals("KWH")) {
              ++consumption;
              if(consumption == 3) ps.print("\nConsumo acueducto y alcantarillado " + palabrasFinal[i + 1]);
            }

            if(palabrasFinal[i].equals("Días")) {
              ++days;
              if(days == 1) ps.print("\nDías de consumo " + palabrasFinal[i - 1]);
            }

            if(palabrasFinal[i].equals("Diferencia") && palabrasFinal[i + 1].equals("M3")) ps.print("\nDiferencia gas M3 " + palabrasFinal[i - 1]);
          }

          if(palabrasFinal[i].equalsIgnoreCase("recargo")) {
            ++surcharge;
            if(surcharge == 1) ps.print("\nFecha de recaudo " + palabrasFinal[i + 1]);
          }
          
          if(palabrasFinal[i].equals("Año")) ps.print("\nTotal factura " + palabrasFinal[i + 1]);

          if(palabrasFinal[i].equals("Contrato:") && !contract) {
            contract = true;
            ps.print("\nContrato " + palabrasFinal[i + 1]);
          }

          if(palabrasFinal[i].equals("Alcantarillado") && palabrasFinal[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 2 && j > 0) {
              if(palabrasFinal[j].equals("Subsidio")) {
                ps.print("\nCargo fijo alcantarillado " + palabrasFinal[j - 1]);
                ps.print("\nSubsidio alcantarillado " + palabrasFinal[j + 2]);
                break; 
              }
              ++j;
            }
          }

          if(palabrasFinal[i].equals("Acueducto") && palabrasFinal[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 2 && j > 0) {
              if(palabrasFinal[j].equals("Subsidio")) {
                ps.print("\nCargo fijo acueducto " + palabrasFinal[j - 1]);
                ps.print("\nSubsidio acueducto " + palabrasFinal[j + 2]);
                break; 
              }
              ++j;
            }
          }

          if(palabrasFinal[i].equals("Energía") && palabrasFinal[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 2) {
              if(palabrasFinal[j].equals("Subsidio")) {
                ps.print("\nSubsidio energia " + palabrasFinal[j + 2]);
                break; 
              }
              ++j;
            }
          }

          if(palabrasFinal[i].equals("Gas") && palabrasFinal[i + 1].equals("Producto")) {
            int j = i + 1;
            while(j < length - 3){
              if(palabrasFinal[j].equals("Cargo") && palabrasFinal[j + 1].equals("fijo")) {
                j += 3;
                ps.print("\nCargo fijo gas " + palabrasFinal[j]);
                break;
              }
              ++j;
            }
          }
        }

        if(i < length - 5) {
          if(palabrasFinal[i].equals("Costo") && palabrasFinal[i + 1].equals("Valor") && palabrasFinal[i + 2].equals("Consumo")) {
            ++unitary;
            if(unitary == 1) {
              i += 5;
              ps.print("\nCosto unitario acueducto " + palabrasFinal[i]); 
            }

            if(unitary == 2) {
              i += 5;
              ps.print("\nCosto unitario alcantarillado " + palabrasFinal[i]); 
            }

            if(unitary == 3) {
              i += 5;
              ps.print("\nCosto unitario gas " + palabrasFinal[i]); 
            }
          }

          if(palabrasFinal[i].equals("Energía") && palabrasFinal[i + 1].equals("activa") && !energy) {
            energy = true;
            i += 4;
            ps.print("\nCosto unitario energia " + palabrasFinal[i]); 
          }

          if(palabrasFinal[i].equals("consum")) {
            ps.print("\nConsumo gas m3 " + palabrasFinal[i + 1]); 
            i += 4;
            ps.print("\nConsumo gas KWH " + palabrasFinal[i]); 
          }
        }
        
      }
      
      //String line32 = Files.readAllLines(Paths.get("/home/mariaarango/Documents/University/3rdSemester/BasesDeDatos/DataBasesProject/CodigoProyecto/fac12.txt")).get(10);
      //System.out.println(line32);
   }
   
}