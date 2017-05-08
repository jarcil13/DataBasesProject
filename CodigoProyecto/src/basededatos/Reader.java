/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.pdf.PDFParser;
import org.apache.tika.parser.pdf.PDFParserConfig;
import org.apache.tika.sax.BodyContentHandler;
import org.xml.sax.SAXException;

/**
 *
 * @author juan
 */
public class Reader {
    private File PDF;
    private String[] ready;
    
    public Reader(File PDF) throws IOException, TikaException, FileNotFoundException, SAXException{
        this.PDF = PDF;
        parserPDF();
    }
         
    private void parserPDF () throws FileNotFoundException, IOException, SAXException, TikaException{
        BodyContentHandler handler = new BodyContentHandler();
        Metadata metadata = new Metadata();
        FileInputStream inputstream = new FileInputStream(PDF);
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
        
        ready = palabrasFinal;
    }
    
    public String[] getPDF(){     
       return ready;
    }
   
    public File getFile(){ return PDF; }
}
