/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.apache.tika.Tika;

import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.pdf.PDFParser;
import org.apache.tika.parser.pdf.PDFParserConfig;
import org.apache.tika.sax.BodyContentHandler;

import org.xml.sax.SAXException;

public class Reader {
    
   public static void main(final String[] args) throws IOException,TikaException, SAXException {
     
      BodyContentHandler handler = new BodyContentHandler();
      Metadata metadata = new Metadata();
      FileInputStream inputstream = new FileInputStream(new File("./../../Universidad/BasesDeDatos/Facturas/factura2.pdf"));
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
       
       
       //ESTE ES EL IF. EL ARREGLO A USAR ES PALABRASFINAL 
       for(int i = 0; i<palabrasFinal.length; i++){
           if(palabrasFinal[i].equals("Referente") && palabrasFinal[i+1].equals("de")
                    && palabrasFinal[i+2].equals("pago:")) {
               System.out.println("numero: " + palabrasFinal[i+3] + " en la linea " + i );
           }
        }
       
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
   //WENDY !! NO !! 
    public static void main2(final String[] args) throws IOException, SAXException,TikaException {
   
      //Scanner scanner = new Scanner(System.in);
      //System.out.println("enter path of your file");
      String filepath = "./../../Universidad/BasesDeDatos/Facturas/factura1.pdf";
   
      //creating the file object		        
      File file = new File(filepath); 
   
      //using tika facade
      Tika tika = new Tika();
      String filecontent = tika.parseToString(file);
      System.out.println("Extracted Content: " + filecontent);
  }
}
