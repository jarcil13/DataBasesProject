/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import java.awt.Color;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.PDF;
import org.xml.sax.SAXException;

/**
 *
 * @author María Arango
 */
public class CreateEnt extends BaseDeDatos {

    private static String user;
    private String path;
    private File PDF;
    /**
     * Creates new form CreateEnt
     */
    public CreateEnt(String user) {
        initComponents();
        this.user = user;
        bCargar.setVisible(false);
        jShowStatus.setVisible(false);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jStatus = new javax.swing.JLabel();
        bCargar = new javax.swing.JButton();
        this.setVisible(false);
        Bpath = new javax.swing.JButton();
        getBack = new javax.swing.JButton();
        search = new javax.swing.JButton();
        jShowStatus = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel3.setText("Seleccione PDF de la factura");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel2.setText("Ingreso de datos de facturación");

        jStatus.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jStatus.setForeground(new java.awt.Color(0, 0, 204));
        jStatus.setText("Estado");

        bCargar.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        bCargar.setText("Cargar");
        bCargar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bCargarActionPerformed(evt);
            }
        });

        Bpath.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        Bpath.setText("Seleccionar");
        Bpath.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BpathActionPerformed(evt);
            }
        });

        getBack.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        getBack.setText("Regresar");
        getBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                getBackActionPerformed(evt);
            }
        });

        search.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        search.setText("Consultar");
        search.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchActionPerformed(evt);
            }
        });

        jShowStatus.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        jShowStatus.setForeground(new java.awt.Color(0, 153, 0));
        jShowStatus.setText("Carga terminada");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(100, 100, 100)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jStatus, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel3)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(49, 49, 49)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(getBack)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(search))
                                    .addComponent(jLabel2))))
                        .addGap(0, 46, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Bpath)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(bCargar)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jShowStatus)))))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(42, 42, 42)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jStatus)
                    .addComponent(Bpath))
                .addGap(80, 80, 80)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(bCargar)
                    .addComponent(jShowStatus))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 21, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(getBack)
                    .addComponent(search))
                .addGap(36, 36, 36))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void bCargarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bCargarActionPerformed
       try{
        // Aqui se hace la lectura de PDF
        Reader lectura = new Reader(PDF);
        // se manda el read par
        LoadPDFMysql loader = new LoadPDFMysql(lectura, Integer.parseInt(user), "99999"); // se pone 9999 ya UNE es generado 
        
       
        //Cargal a informacion a Mysql
        loader.go();
        jShowStatus.setVisible(true);
        }
        catch(IOException e){ // mostrar dialogo de realizado o no realizado
            
        } catch (TikaException | SAXException ex) {
            Logger.getLogger(CreateEnt.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_bCargarActionPerformed

    private void BpathActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BpathActionPerformed
        JFileChooser fileChooser = new JFileChooser();
        fileChooser.setCurrentDirectory(new File(System.getProperty("user.home")));
        int result = fileChooser.showOpenDialog(this);
        if (result == JFileChooser.APPROVE_OPTION) {
            File selectedFile = fileChooser.getSelectedFile();
            String name = selectedFile.getName();
            path = selectedFile.getAbsolutePath();
            if(name.substring(name.length()-4,name.length()).equals(".pdf")){
               jStatus.setForeground(Color.BLUE);
                bCargar.setVisible(true);
                jStatus.setText(name);
            }
            else{
                jStatus.setForeground(Color.RED);
                jStatus.setText("Archivo seleccionado no es PDF");
            }
        }
    }//GEN-LAST:event_BpathActionPerformed

    private void getBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_getBackActionPerformed
        this.setVisible(false);
        CentroEnt co = new CentroEnt(user);
        co.setVisible(true);
    }//GEN-LAST:event_getBackActionPerformed

    private void searchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchActionPerformed
        this.setVisible(false);
        ReadEnt co = new ReadEnt(user);
        co.setVisible(true);
    }//GEN-LAST:event_searchActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CreateEnt.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CreateEnt.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CreateEnt.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CreateEnt.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CreateEnt(user).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Bpath;
    private javax.swing.JButton bCargar;
    private javax.swing.JButton getBack;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jShowStatus;
    private javax.swing.JLabel jStatus;
    private javax.swing.JButton search;
    // End of variables declaration//GEN-END:variables
}
